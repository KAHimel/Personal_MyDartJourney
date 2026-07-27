void main() {
  // defining the label

  Loop1:
  for (int i = 0; i < 3; i++) {
    if (i < 2) {
      print("You are inside Loop1");

      //breaking the label
      break Loop1;
    }
    print("You are outsite Loop1");
  }

  print("-------------------------");
  Loop2:
  for (int i = 0; i < 3; i++) {
    if (i < 2) {
      print("You are inside Loop2");

      //continuing the label
      continue Loop2;
    }
    print("You are outsite Loop2");
  }
}
