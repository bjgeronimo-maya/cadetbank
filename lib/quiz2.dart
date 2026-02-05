void displayUserInfo(String name, {required int age, String? address}) {
  print("Name: $name");
  print("Age: $age");
  print("Address: ${address ?? 'Not provided'}");
}

void main() {
  displayUserInfo("Juan Dela Cruz", age: 20, address: "123 Main St");
  displayUserInfo("Maria Clara", age: 25);
}

