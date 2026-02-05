void displayUserInfo(String name, {required int age, String? address}){
  print('Name: $name');
  print('Age: $age');
  print('Address: ${address ?? 'Not provided'}');
}

void main(){
  displayUserInfo('AC', age: 23);
  displayUserInfo('AC', age: 23, address: 'QC');
}