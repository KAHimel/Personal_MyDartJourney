// use of (?..)
class Student {
  String name = "";

  void greet() {
    print("Hello, I am $name"); // student is null, so nothing happens
  }
}

class Student2 {
  String name = "";

  void greet() {
    print("Hello, I am $name"); // student2 is not null, got output
  }
}

void main() {
  Student? student = null;
  student
    ?..name = "Himel"
    ..greet();

  Student2? student2 = Student2();
  student2
    ?..name = "Himel"
    ..greet();
}
