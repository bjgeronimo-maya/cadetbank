void displayUserInfo(String name, {required int age, String? address}) {
  print('Name: $name');
  print('Age: $age');
  print('Address: ${address ?? 'Not provided'}');
}

void main() {
  displayUserInfo('Aira', age: 22);
  displayUserInfo('Aira', age: 22, address: 'Manila');
}