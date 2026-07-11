// use of (..)
class Student {
  String name = "";
  int age = 0;
}

class Student2 {
  String name = "";
  int age = 0;
}

class Student3 {
  String name = "";

  void greet() {
    print("Hello, I am $name");
  }
}

void main() {
  // with (..)
  Student student =
      Student() // student is written only once
        ..name = "Himel"
        ..age = 25;
  print(student.name);
  print(student.age);

  // without (..)
  Student2 student2 = Student2();
  student2.name = "Himel"; // student2 is written twice
  student2.age = 25;
  print(student2.name);
  print(student2.age);

  print("\nUse of (..) | with methods");
  Student3()
    ..name = "Himel"
    ..greet();
}
