void main() {
  int age = 25; //stores whole numbers
  print(age);

  BigInt bigNumber = BigInt.parse(
    '123456789012345678901234567890',
  ); //stores very large integers
  print(bigNumber);

  double pi = 3.14159; //stores decimal numbers
  print(pi);

  num number = 42; //can store both integers and floating-point numbers
  num number2 = 3.14; //can store both integers and floating-point numbers
  print(number);
  print(number2);

  String name = "Kowshik"; //stores text
  String name2 = "Himel"; //stores text
  print(name);
  print(name2);

  bool isStudent = true; //stores boolean values
  bool isEmployed = false; //stores boolean values
  print(isStudent);
  print(isEmployed);

  List<String> names = [
    "Kowshik",
    "Ahamed",
    "Himel",
  ]; //stores a list of strings
  print(names);
  print(names[0]);
  print(names[1]);
  print(names[2]);

  Set<int> numbers = {10, 20, 30}; //stores a set of unique integers
  print(numbers);
  Set<int> numbers2 = {
    10,
    20,
    20,
    30,
    30,
    40,
    50,
    60,
  }; //the duplicate values are automatically removed
  print(numbers2);

  Map<String, int> marks = {
    "Math": 95,
    "Science": 88,
    "English": 91,
  }; //stores key-value pairs
  print(marks);
  print(marks["Math"]);
  print(marks["Science"]);
  print(marks["English"]);
}
