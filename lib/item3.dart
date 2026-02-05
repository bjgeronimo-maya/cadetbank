void main() {
  const sampleString = "This is a sample string.";
  print(sampleString.isBlankOrEmpty());
}

extension StringExt on String {
  bool isBlankOrEmpty() {
    return isEmpty || trim().isEmpty;
  }
}