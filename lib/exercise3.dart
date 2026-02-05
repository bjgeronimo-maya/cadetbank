void main() {
  const sampleString = "     ";
  print(sampleString.isBlankOrEmpty());
}

extension StringExt on String {
  bool isBlankOrEmpty() {
    return isEmpty || trim().isEmpty;
  }
}
