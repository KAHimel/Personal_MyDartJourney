# Day 05 — Control Flow (Explained Simply)

## Objective

- Learn Dart control flow basics.
- See very small examples and simple, baby-style line-by-line explanations.

---

## Files in this folder

1. `conditional_statements.dart` — `if`, `if-else`, and nested `if`
2. `loops.dart` — `for`, `while`, `do-while`, `for-in`, and `forEach`
3. `loop_control.dart` — `break` and `continue`
4. `switch_statements.dart` — `switch`

These files show the main control-flow ideas in a very small and simple way.

---

For each file below: code, a tiny line-by-line baby explanation, then a slightly broken version and the error you would see.

### 1. `conditional_statements.dart` — decision time

Code

```dart
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
```

Line-by-line (baby):
- 1: I made a number called `age`.
- 2: I checked if `age` is 18 or more.
- 3: If yes, I print that the person is an adult.
- 4: I made another number called `age2`.
- 5: I checked it with `if-else`.
- 6: If true, I print adult.
- 7: If false, I print minor.
- 8: I made a marks number.
- 9: I checked many grade ranges.
- 10: If marks are high enough, I print grade A.
- 11: Otherwise, I check for grade B.
- 12: Then grade C.
- 13: If none match, I print a reminder.
- 14: I made one more age and a true/false value.
- 15: I checked the age first.
- 16: Then I checked if the ID is there.
- 17: If both are true, I print the entrance message.

Broken tiny change:

```dart
void main() {
  int age = 10;
  if (age >= 18) {
    print("You are an adult.");
  } else
}
```

Error (what happens):
- Syntax error: Dart expects something after `else`, so the code breaks.

Run it with:

```bash
dart run bin/Day05_Control_Flow/conditional_statements.dart
```

---

### 2. `loops.dart` — repeat again and again

Code

```dart
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
```

Line-by-line (baby):
- 1: I used a `for` loop to repeat a small number of times.
- 2: I started from `0` and kept going until `5`.
- 3: I printed each number.
- 4: I used a `while` loop when I wanted to repeat while a condition stays true.
- 5: I started `j` at `6`.
- 6: I printed `j` and then increased it.
- 7: I used `do-while`, which runs at least once before checking the condition.
- 8: I started `k` at `11`.
- 9: I printed and increased it.
- 10: I used `for-in` to go through each item in a list.
- 11: I made a list of fruits.
- 12: I printed each fruit one by one.
- 13: I used `forEach` for a simple list walk.
- 14: I made a list of vegetables.
- 15: I printed each vegetable.

Broken tiny change:

```dart
void main() {
  for (int i = 0; i <= 5; i++) {
    print(i);
  }
```

Error (what happens):
- Syntax error: the loop is missing a closing brace, so Dart stops with a compile error.

Run it with:

```bash
dart run bin/Day05_Control_Flow/loops.dart
```

---

### 3. `loop_control.dart` — stop or skip

Code

```dart
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
```

Line-by-line (baby):
- 1: I used `break` to stop the loop early.
- 2: When `i` becomes `5`, I stop the loop.
- 3: I used `continue` to skip one step.
- 4: When `i` is `5`, I skip printing it.
- 5: The loop keeps going for the other numbers.

Broken tiny change:

```dart
void main() {
  for (int i = 0; i <= 10; i++) {
    if (i == 5) {
      break
    }
    print(i);
  }
}
```

Error (what happens):
- Syntax error: `break` needs a semicolon, so Dart complains.

Run it with:

```bash
dart run bin/Day05_Control_Flow/loop_control.dart
```

---

### 4. `switch_statements.dart` — pick one path

Code

```dart
void main() {
  String day = "Saturday";

  switch (day) {
    case "Sunday":
      print("Today is Sunday");
      break;
    case "Monday":
      print("Today is Monday");
      break;
    case "Tuesday":
      print("Today is Tuesday");
      break;
    case "Wednesday":
      print("Today is Wednesday");
      break;
    case "Thursday":
      print("Today is Thursday");
      break;
    case "Friday":
      print("Today is Friday");
      break;
    case "Saturday":
      print("Today is Saturday");
      break;
  }
}
```

Line-by-line (baby):
- 1: I made a variable called `day`.
- 2: I used `switch` to check the value of `day`.
- 3: Each `case` is one possible value.
- 4: When it matches `Saturday`, I print the message.
- 5: `break` stops the switch after the matching case.

Broken tiny change:

```dart
void main() {
  String day = "Sunday";

  switch (day) {
    case 1:
      print("Wrong type");
      break;
  }
}
```

Error (what happens):
- Compile-time error: the `switch` expression is a `String`, but the `case` uses an `int`.

Run it with:

```bash
dart run bin/Day05_Control_Flow/switch_statements.dart
```

---

## Summary

- `if` = make a choice.
- `else` = what to do if the choice is false.
- `for` = repeat a known number of times.
- `while` = repeat while a condition stays true.
- `do-while` = do it once first, then check.
- `break` = stop the loop early.
- `continue` = skip one step.
- `switch` = choose one path from many options.
