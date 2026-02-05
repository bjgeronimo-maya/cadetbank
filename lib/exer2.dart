void displayUserInfo(String name, {required int age, String? address}) {
  print('Name: $name');
  print('Age: $age');
  print('Address: $address');
}

void main() {
  displayUserInfo('Angelo', age: 22);
  displayUserInfo('Angelo', age: 22, address: 'Manila');
}