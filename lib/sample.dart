void main() async {
  // Exercise 1
  print("Start Fetching...");
  await fetchPersonInfo();
  print("Done!");

  //Exercise 2
  print("=====");
  displayUserInfo(name: "Jopet", age: 25, address: "Laguna");
  displayUserInfo(name: "Jopet", age: 25);
  print("=====");

  // Exercise 3
  const sampleString = "";
  print(sampleString.isBlankOrEmpty());
}

extension StringExtensions on String {
  bool isBlankOrEmpty() {
    return isEmpty || trim().isEmpty;
  }
}

Future<void> fetchPersonInfo() async {
  await Future.delayed(const Duration(seconds: 3));
  print("Name: Jon Peter Pomperada");
  print("Age: 25");
}

void displayUserInfo({required String name, int age = 0, String? address}) {
  print("Name: $name");
  print("Age: $age");
  print("Address: ${address ?? "Address Not provided"}");
}
