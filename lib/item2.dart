void displayPersonInfo(String name, {required int age, String address = "Unknown"}) {
  print("Name: $name");
  print("Age: $age");
  print("Address: $address");
}

void main() async {
  displayPersonInfo("Steph Curry", age: 37, address: "California");
} 