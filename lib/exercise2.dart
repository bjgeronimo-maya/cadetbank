void main() {
  displayUserInfo("Jane Doe", age: 12, address: "Sydney");
}

void displayUserInfo(String name, {required int age, String? address}) {
  print('Name: $name');
  print('Age: $age');
  print('Address: $address');
}
