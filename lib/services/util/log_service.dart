import 'package:flutter/foundation.dart';

/// 전역 로깅 시스템 - 진단을 위해 주요 이벤트를 메모리에 기록하고 익스포트 기능을 제공합니다.
class LogService {
  static final List<String> _logs = [];
  static const int _maxLogs = 200;

  static void info(String message) {
    _addLog('INFO', message);
  }

  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    String fullMessage = message;
    if (error != null) fullMessage += ' | Error: $error';
    _addLog('ERROR', fullMessage);
    if (stackTrace != null) {
      debugPrint('[LogService] StackTrace: $stackTrace');
    }
  }

  static void _addLog(String level, String message) {
    final timestamp = DateTime.now().toIso8601String().split('T').last.substring(0, 12);
    final logEntry = '[$timestamp][$level] $message';
    
    _logs.add(logEntry);
    if (_logs.length > _maxLogs) {
      _logs.removeAt(0);
    }
    
    debugPrint(logEntry);
  }

  static String getAllLogs() {
    return _logs.join('\n');
  }

  static void clear() {
    _logs.clear();
  }
}
