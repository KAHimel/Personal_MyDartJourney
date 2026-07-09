//use of (!)
void main() {
  String? name2 = "Himel";
  print(name2!);
  print(name2!.length);

  String? name = null;
  print(name!); // ❌ Runtime Error. Because name is actually null.
  print(name!.length); // ❌ Runtime Error. Because name is actually null.
}
