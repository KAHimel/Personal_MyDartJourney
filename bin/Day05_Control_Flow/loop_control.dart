void main() {
  // use of break statement
  print("-------------------\nUsing break statement\n-------------------");

  for (int i = 0; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }

  // use of continue statement
  print("-------------------\nUsing continue statement\n-------------------");
  for (int i = 0; i <= 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}
