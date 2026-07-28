void main() {
  addTwoNum(20, 6);
  addTwoNum(10, 6);
  optionalPositionalParameter(10, 20, 30);
  optionalPositionalParameter(10, 20, 30, 40, 50);
  optionalNamedParameter(100, 200, 300);
  optionalNamedParameter(100, 200, 300, d: 400, e: 500);
}

addTwoNum(int n1, int n2) {
  print(n1 + n2);
}

optionalPositionalParameter(a, b, c, [d, e]) {
  print(a);
  print(b);
  print(c);
  print(d);
  print(e);
}

optionalNamedParameter(a, b, c, {d, e}) {
  print(a);
  print(b);
  print(c);
  print(d);
  print(e);
}
