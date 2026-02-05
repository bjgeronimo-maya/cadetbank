Future<void> fetchPersonInfo() async {
  await Future.delayed(const Duration(seconds:3));
  print('Name: Juan De La Cruz');
  print('Age: 20');
}

void main() async{
  print("Start Fetching");
  await fetchPersonInfo();
  print("Done");
}

