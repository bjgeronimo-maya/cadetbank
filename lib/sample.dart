// Quiz #1
Future<void> fetchPersonInfo() async {
  await Future.delayed(const Duration(seconds: 3));
  print("Name: Juan Dela Cruz");
  print("Age: 20");
}

// Quiz #2
void displayUserInfo(
  String name, {
  required int age,
  String? address,
}) {
  print("Name: $name");
  print("Age: $age");
  print("Address: ${address ?? 'Not provided'}");
}

// Quiz #3
extension StringExtension on String {
  bool get isBlankOrEmpty {
    return trim().isEmpty;
  }
}

Future<void> main() async {
  // 1
  print("Start fetching...");
  await fetchPersonInfo();
  print("Done!");

  print("----------------");

  // 2
  displayUserInfo(
    "Juan Dela Cruz",
    age: 20,
    address: "Quezon City",
  );

  print("----------------");

  // 3
  print("".isBlankOrEmpty); // t
  print("   ".isBlankOrEmpty); // t
  print("testing".isBlankOrEmpty); // f
}
