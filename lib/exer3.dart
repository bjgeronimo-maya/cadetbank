extension StringExtension on String {
  bool isBlankOrEmpty() {
    return trim().isEmpty;
  }
}

void main() {
  print("".isBlankOrEmpty());        // true (empty)
  print("   ".isBlankOrEmpty());     // true (only spaces)
  print("AC".isBlankOrEmpty());   // false
  print("  AC  ".isBlankOrEmpty());  // false
}
