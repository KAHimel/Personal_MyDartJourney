void main() {
  //use of if statement
  int age = 18;
  if (age >= 18) {
    print("You are an adult.");
  }

  // use of if-else statement
  int age2 = 16;
  if (age2 >= 18) {
    print("You are an adult.");
  } else {
    print("You are a minor.");
  }

  // use of nested if-else statement
  int marks = 85;
  if (marks >= 90) {
    print("You got an A grade.");
  } else if (marks >= 80) {
    print("You got a B grade.");
  } else if (marks >= 70) {
    print("You got a C grade.");
  } else {
    print("You need to work harder.");
  }

  // use nested if statements
  int age3 = 30;
  bool hasId = true;

  if (age3 >= 30) {
    if (hasId) {
      print("You are allowed to enter the club");
    }
  }
}
