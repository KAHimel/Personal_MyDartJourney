void main() {
  function1()();
  function3(function4);
}

Function function1() {
  return function2;
}

dynamic function2() {
  print(20 + 6);
}

void function3(Function action) {
  action();
}

dynamic function4() {
  print(10 + 6);
}
