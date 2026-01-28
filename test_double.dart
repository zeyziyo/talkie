void main() {
  try {
    double n = 0 / 0;
    print('NaN toStringAsFixed: ${n.toStringAsFixed(0)}');
  } catch (e) {
    print('NaN error: $e');
  }

  try {
    double i = 1 / 0;
    print('Infinity toStringAsFixed: ${i.toStringAsFixed(0)}');
  } catch (e) {
    print('Infinity error: $e');
  }
}
