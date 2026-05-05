import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'package:flutter/foundation.dart';

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
  // FIXME: 실제 출시 전 'UsageService.adUnitId'를 실제 운영 ID로 반드시 교체해야 함.
  static const String adUnitId = 'ca-app-pub-3940256099942544/5224354917';
  
  // Constants
  static const int _dailyFreeLimit = 10;
  static const int _monthlyProLimit = 1500;
  
  SharedPreferences? _prefs;

  /// Initialize dependencies
  Future<void> init({SharedPreferences? prefs}) async {
    if (prefs != null) {
      _prefs = prefs;
      print('[UsageService] Initialized with provided prefs');
    }
    
    if (_prefs == null) {
      print('[UsageService] Initializing SharedPreferences.getInstance()...');
      _prefs = await SharedPreferences.getInstance();
      print('[UsageService] SharedPreferences.getInstance() OK');
      
      // AdMob 테스트 ID 사용 경고 (디버그 모드에서만 확인용)
      if (adUnitId.contains('3940256099942544')) {
        debugPrint('UsageService: [!] WARNING: Using AdMob Test Ad Unit ID ($adUnitId)');
      }
    }
  }

  /// Check current status and reset if needed
  Future<void> checkReset() async {
    print('[UsageService] checkReset starting...');
    await init();
    
    print('[UsageService] Reading last reset date...');
    final lastResetStr = _prefs!.getString(_keyLastResetDate);
    final isPro = _prefs!.getBool(_keyIsPro) ?? false;
    final now = DateTime.now();
    
    if (lastResetStr == null) {
      print('[UsageService] First run detected. Resetting counters...');
      await _resetCounters(now);
      return;
    }

    try {
      print('[UsageService] Parsing last reset date: $lastResetStr');
      final lastResetDate = DateTime.parse(lastResetStr);
      
      if (isPro) {
        final lastMonth = DateTime(lastResetDate.year, lastResetDate.month);
        final currentMonth = DateTime(now.year, now.month);
        
        if (currentMonth.isAfter(lastMonth)) {
          print('[UsageService] Pro: Month changed. Resetting...');
          await _resetCounters(now);
        }
      } else {
        final lastDay = DateTime(lastResetDate.year, lastResetDate.month, lastResetDate.day);
        final currentDay = DateTime(now.year, now.month, now.day);
        
        if (currentDay.isAfter(lastDay)) {
          print('[UsageService] Free: Day changed. Resetting...');
          await _resetCounters(now);
        }
      }
    } catch (e) {
      print('[UsageService] Date Parse Error: $e. Resetting anyway.');
      await _resetCounters(now);
    }
    print('[UsageService] checkReset completed.');
  }

  Future<void> _resetCounters(DateTime now) async {
    print('[UsageService] _resetCounters: Usage=0');
    await _prefs!.setInt(_keyUsageCount, 0);
    print('[UsageService] _resetCounters: Refill=0');
    await _prefs!.setInt(_keyRefillCount, 0);
    print('[UsageService] _resetCounters: Date=$now');
    await _prefs!.setString(_keyLastResetDate, now.toIso8601String());
    print('[UsageService] _resetCounters DONE');
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
    print('[UsageService] checkLimitOrThrow starting...');
    final canTrans = await canTranslate();
    print('[UsageService] canTranslate result: $canTrans');
    
    if (!canTrans) {
      final isPro = _prefs!.getBool(_keyIsPro) ?? false;
      if (isPro) {
        throw LimitReachedException("Monthly limit reached ($contextMonthLimit)");
      } else {
        throw LimitReachedException("Daily limit reached");
      }
    }
    print('[UsageService] checkLimitOrThrow OK.');
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
