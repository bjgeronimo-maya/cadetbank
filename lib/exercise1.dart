Future<void> fetchPersonInfo() async {
    await Future.delayed(const Duration(seconds: 3));
    print("Name: Juan Dela Cruz");
    print("Age: 20");
}

void displayUserInfo(String name, {required int age, String address = "No address provided"}) {
  print("Name: $name");
  print("Age: $age years old");
  print("Address: $address");
}

extension on String {
  bool isBlankOrEmpty() {
    return this.trim().isEmpty;
  }
}

void main() async {
    // Item 1
    print("Start fetching...");
    await fetchPersonInfo();
    print("Done!");

    // Item 2
    displayUserInfo("Anton", age: 23, address: "Quezon City");
    displayUserInfo("Maki", age: 3);

    // Item 3
    print("".isBlankOrEmpty());
    print("   ".isBlankOrEmpty());
    print(" \n ".isBlankOrEmpty());
    print(" Hello world! ".isBlankOrEmpty());
}