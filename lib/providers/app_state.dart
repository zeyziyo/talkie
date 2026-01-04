import 'package:flutter/foundation.dart';

/// App-wide state management
class AppState extends ChangeNotifier {
  // Current mode: 'translate' or 'practice'
  String _currentMode = 'translate';
  
  // Language configuration
  final String sourceLang = 'ko';  // Korean
  final String targetLang = 'es';  // Spanish
  
  // Debug logs
  final List<String> _debugLogs = [];
  static const int _maxLogs = 10;
  
  String get currentMode => _currentMode;
  List<String> get debugLogs => List.unmodifiable(_debugLogs);
  
  /// Switch between MODE 1 (translate) and MODE 2 (practice)
  void setMode(String mode) {
    if (mode != _currentMode) {
      _currentMode = mode;
      addLog('Mode switched to: $mode');
      notifyListeners();
    }
  }
  
  /// Add debug log message
  void addLog(String message) {
    print(message);
    _debugLogs.add(message);
    if (_debugLogs.length > _maxLogs) {
      _debugLogs.removeAt(0);
    }
    notifyListeners();
  }
  
  /// Clear debug logs
  void clearLogs() {
    _debugLogs.clear();
    notifyListeners();
  }
}
