Future<void> fetchPersonInfo() async {
  await Future.delayed(const Duration(seconds: 3));
  print("Name: Juan dela Cruz");
  print("Age: 20");
}

void main() async {
  print("Start fetching...");
  await fetchPersonInfo();
  print("Done!");
}

void displayUserInfo(String name, {required int age, String? address}) {
  print("Name: $name");
  print("Age: $age");
  if (address != null) {
    print("Address: $address");
  }
}

extension on String {
  String isBlankOrEmpty() {
    return this.trim().isEmpty ? "String is empty" : "String is not empty";
  }
}