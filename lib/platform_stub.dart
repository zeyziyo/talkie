// Stub file for web platform where dart:io is not available
// This provides a mock Platform class to avoid compile errors

class Platform {
  static bool get isWindows => false;
  static bool get isLinux => false;
  static bool get isAndroid => false;
  static bool get isIOS => false;
  static bool get isMacOS => false;
  static bool get isFuchsia => false;
}
