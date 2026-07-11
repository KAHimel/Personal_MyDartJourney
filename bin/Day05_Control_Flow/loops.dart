void main() {
  // use of for loop
  print("-------------------\nUsing for loop\n-------------------");

  for (int i = 0; i <= 5; i++) {
    print(i);
  }

  // use of while loop
  print("-------------------\nUsing while loop\n-------------------");

  int j = 6;

  while (j <= 10) {
    print(j);
    j++;
  }

  // use of do-while loop
  print("-------------------\nUsing do-while loop\n-------------------");

  int k = 11;

  do {
    print(k);
    k++;
  } while (k <= 15);

  // use of for-in loop
  print("-------------------\nUsing for-in loop\n-------------------");

  List<String> fruits = ["Apple", "Banana", "Mango", "Orange"];

  for (String fruit in fruits) {
    print(fruit);
  }

  // use of for-each loop
  print("-------------------\nUsing for-each loop\n-------------------");
  List<String> vegetables = ["Carrot", "Potato", "Tomato", "Cucumber"];

  vegetables.forEach((vegetable) {
    print(vegetable);
  });
}
