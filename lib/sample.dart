void main() {
  // Exercise 1
  print("Start Fetching...");
  fetchPersonInfo();
  print("Done!");

  //Exercise 2
  print("=====");
  displayUserInfo("Jopet", 25, "Laguna");
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

void displayUserInfo(String name, int age, String? address) {
  print("Name: $name");
  print("Age: $age");
  if (address != null) {
    print("Address: $address");
  } else {
    print("Address: Not provided");
  }
}
