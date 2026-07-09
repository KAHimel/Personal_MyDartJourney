//use of (?)
void main() {
  String? name = null;
  print(name);
  print(name?.length);

  name = "Himel";
  print(name);
  print(name?.length);
}
