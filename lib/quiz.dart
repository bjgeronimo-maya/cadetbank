// String extension for Quiz #3
extension StringExtension on String {
  bool isBlankOrEmpty() {
    return trim().isEmpty;
  }
}

// Function for Quiz #2
void displayUserInfo(String name, {required int age, String? address}) {
  print("Name: $name");
  print("Age: $age");
  print("Address: ${address ?? 'N/A'}");
}

// Function for Quiz #1
Future<void> fetchPersonInfo() async {
  await Future.delayed(const Duration(seconds: 3));
  print("Name: Juan Dela Cruz");
  print("Age: 20");
}

Future<void> main() async {
  // Quiz #1
  print("Start fetching...");
  await fetchPersonInfo();
  print("Done!");

  print("---------------");

  // Quiz #2
  displayUserInfo("Gabriel", age: 22, address: "Pasig");

  print("---------------");

  // Quiz #3
  print("".isBlankOrEmpty());       // true
  print("   ".isBlankOrEmpty());    // true
  print("Hello".isBlankOrEmpty());  // false
}