Future<void> fetchPersonalInfo() async {
  await Future.delayed(const Duration(seconds: 3));
  print("Name: Juan Dela Cruz");
  print("Age: 20");
}

void displayUserInfo(
  String name, {
  String? address,
  required int age,
}) {
  print("Name: $name");
  print("Age: $age");
  print("Address: ${address ?? 'N/A'}");
}

extension StringExtensions on String {
  bool get isBlankOrEmpty {
    return trim().isEmpty;
  }
}

Future<void> main() async {
  print("Start fetching...");
  await fetchPersonalInfo();
  print("Done!");

  displayUserInfo("Juan Dela Cruz", address: "Manila", age: 20);

  print("".isBlankOrEmpty);
  print("   ".isBlankOrEmpty);
  print("Hello".isBlankOrEmpty);
}
