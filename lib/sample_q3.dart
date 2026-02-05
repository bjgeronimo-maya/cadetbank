extension StringExtensions on String {
  bool isBlankOrEmpty() {
    return trim().isEmpty;
  }
}

// Test
void main() {
  print("".isBlankOrEmpty()); // true
  print("  ".isBlankOrEmpty()); // true
  print("not empty".isBlankOrEmpty()); // false
}
