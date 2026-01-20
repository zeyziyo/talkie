import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class LimitReachedException implements Exception {
  final String message;
  final bool isDailyLimit;
  LimitReachedException(this.message, {this.isDailyLimit = true});
  @override
  String toString() => message;
}

/// Service to track and enforce translation limits
class UsageService {
  static final UsageService _instance = UsageService._internal();
  factory UsageService() => _instance;
  UsageService._internal();

  // Keys
  static const String _keyUsageCount = 'prefs_usage_count';
  static const String _keyLastResetDate = 'prefs_last_reset_date';
  static const String _keyRefillCount = 'prefs_refill_count';
  static const String _keyIsPro = 'prefs_is_pro_user';
  
  // AdMob Test ID (Rewarded)
  // Replace with real ID in production
  static const String adUnitId = 'ca-app-pub-3940256099942544/5224354917';
  
  // Constants
  static const int _dailyFreeLimit = 5;
  static const int _monthlyProLimit = 1500;
  
  SharedPreferences? _prefs;

  /// Initialize dependencies
  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  /// Check current status and reset if needed
  Future<void> checkReset() async {
    await init();
    
    final lastResetStr = _prefs!.getString(_keyLastResetDate);
    final isPro = _prefs!.getBool(_keyIsPro) ?? false;
    final now = DateTime.now();
    
    if (lastResetStr == null) {
      // First run
      await _resetCounters(now);
      return;
    }

    final lastResetDate = DateTime.parse(lastResetStr);
    
    if (isPro) {
      // Pro: Monthly Reset
      // Create new DateTime objects for comparison to ignore time
      final lastMonth = DateTime(lastResetDate.year, lastResetDate.month);
      final currentMonth = DateTime(now.year, now.month);
      
      if (currentMonth.isAfter(lastMonth)) {
        await _resetCounters(now);
      }
    } else {
      // Free: Daily Reset
      final lastDay = DateTime(lastResetDate.year, lastResetDate.month, lastResetDate.day);
      final currentDay = DateTime(now.year, now.month, now.day);
      
      if (currentDay.isAfter(lastDay)) {
        await _resetCounters(now);
      }
    }
  }

  Future<void> _resetCounters(DateTime now) async {
    // Keep refill count? -> Usually refill expires daily for free users.
    // Policy: "Daily 5 free". "Watch ad to refill". 
    // Usually refills are transient. Let's reset refill count too.
    await _prefs!.setInt(_keyUsageCount, 0);
    await _prefs!.setInt(_keyRefillCount, 0);
    await _prefs!.setString(_keyLastResetDate, now.toIso8601String());
  }

  /// Get remaining translations available
  Future<int> getRemainingCount() async {
    await checkReset();
    
    final usage = _prefs!.getInt(_keyUsageCount) ?? 0;
    final isPro = _prefs!.getBool(_keyIsPro) ?? false;
    
    if (isPro) {
      return _monthlyProLimit - usage;
    } else {
      final refills = _prefs!.getInt(_keyRefillCount) ?? 0;
      return (_dailyFreeLimit + refills) - usage;
    }
  }

  /// Check if user can translate
  Future<bool> canTranslate() async {
    // If not initialized, try init
    if (_prefs == null) await init();
    
    final remaining = await getRemainingCount();
    return remaining > 0;
  }
  
  /// Check limit and throw exception if reached
  Future<void> checkLimitOrThrow() async {
    if (!await canTranslate()) {
      final isPro = _prefs!.getBool(_keyIsPro) ?? false;
      if (isPro) {
        throw LimitReachedException("Monthly limit reached ($contextMonthLimit)");
      } else {
        throw LimitReachedException("Daily limit reached");
      }
    }
  }

  /// Increment usage counter
  Future<void> incrementUsage() async {
    await checkReset();
    final usage = _prefs!.getInt(_keyUsageCount) ?? 0;
    await _prefs!.setInt(_keyUsageCount, usage + 1);
  }

  /// Refill logic (Watch Ad)
  Future<void> addRefill(int amount) async {
    await checkReset();
    final currentRefill = _prefs!.getInt(_keyRefillCount) ?? 0;
    await _prefs!.setInt(_keyRefillCount, currentRefill + amount);
  }

  // === Settings / Debug ===

  Future<bool> isPro() async {
    await init();
    return _prefs!.getBool(_keyIsPro) ?? false;
  }
  
  Future<void> setPro(bool value) async {
    await init();
    await _prefs!.setBool(_keyIsPro, value);
    // Reset counters when switching plans to avoid carrying over weird states?
    // Or just let verifyReset handle it on next check. 
    // Let's trigger a reset check to align dates.
    await _resetCounters(DateTime.now()); 
  }

  String get contextMonthLimit => NumberFormat('#,###').format(_monthlyProLimit);
}
