//use of (??=)
void main() {
  String? name = null;
  name ??= "It's Himel not null";
  print(name); /*name is null, 
  so it will assign "Himel" to name 
  and print it.*/

  String? name2;
  name2 ??= "It's Kowshik not null";
  print(name2); /*name is null, 
  so it will assign "Kowshik" to name2 
  and print it.*/

  String? city = "It's Tokyo not null nor Dhaka";
  city ??= "It's Dhaka not null nor Tokyo";
  print(city); /*city is not null,
  so it will not assign "Dhaka" to city*/
}
