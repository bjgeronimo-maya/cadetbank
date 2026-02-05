void displayUserInfo(String name, {required int age, String? address}) {
  print("Name: $name");
  print("Age: $age");
  print("Address: ${address ?? 'N/A'}");
}

// Test
void main() {
  displayUserInfo("John", age: 10);
  displayUserInfo("Kyle", age: 20, address: "Launchpad");
}
