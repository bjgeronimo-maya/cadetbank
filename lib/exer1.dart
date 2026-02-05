Future<void> fetchPersonInfo() async {
  await Future.delayed(const Duration(seconds: 3));
  print("Name: Juan Dela Cruz");
  print("Age: 20");
}

void main() async {
  print("Start fetching...");
  await fetchPersonInfo();
  print("Done!");
}