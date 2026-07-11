# Day 04 — Null Safety (Explained Simply)

## Objective

- Learn Dart null-safety basics and common operators.
- See very small examples and simple, baby-style line-by-line explanations.

---

## Files in this folder

1. `null_abletype.dart` — nullable type (`?`)
2. `null_aware_access.dart` — null-aware access (`?.`)
3. `null_aware_assignment.dart` — null-aware assignment (`??=`)
4. `null_coalescing_operator.dart` — null-coalescing (`??`)
5. `null_assertion_operator.dart` — null-assertion (`!`)
6. `late.dart` — delayed initialization using `late`
7. `late_final.dart` — delayed single-assignment using `late final`
8. `cascade_operator.dart` — cascade notation (`..`)
9. `null_aware_cascade.dart` — null-aware cascade (`?..`)
10. `null_aware_spread_operator.dart` — null-aware spread (`...?...`)

These files show the main null-safety ideas in a very small and simple way.

---

For each file below: code, a tiny line-by-line baby explanation, then a slightly broken version and the error you would see.

### 1. `null_abletype.dart` — `?` (maybe empty)

Code

```dart
//use of (?)
void main() {
  String? name = null;      // 1
  print(name);              // 2
  print(name?.length);      // 3

  name = "Himel";         // 4
  print(name);              // 5
  print(name?.length);      // 6
}
```

Line-by-line (baby):
- 1: I made a box called `name` that can be empty.
- 2: I look inside the box — it's empty so I see `null`.
- 3: I ask "how long?" only if there is something — safe.
- 4: I put the word `Himel` into the box.
- 5: I look and see `Himel`.
- 6: I ask "how long?" and get `5`.

Broken tiny change (my code slightly altered):

```dart
void main() {
  String? name = null;
  print(name!.length); // wrong: force when empty
}
```

Error (what happens):
- The program will crash when running: `Unhandled exception: Null check operator used on a null value`.

Run it with:

```bash
dart run bin/Day04_NullSafety/null_abletype.dart
```

---

### 2. `null_aware_access.dart` — `?.` (ask nicely)

Code

```dart
//use of (?.)
void main() {
  String? name = null;          // 1
  print(name?.length);          // 2

  String? name2 = "Himel";    // 3
  print(name2?.length);         // 4

  String? name3 = "Kowshik";  // 5
  print(name3?.length);         // 6
}
```

Line-by-line (baby):
- 1: empty box.
- 2: ask nicely — nothing happens (safe).
- 3: box with `Himel`.
- 4: ask nicely — returns `5`.
- 5: box with `Kowshik`.
- 6: ask nicely — returns `7`.

Broken tiny change:

```dart
void main() {
  String? name = null;
  print(name.length); // wrong: pokes empty box
}
```

Error (what happens):
- This is a compile-time analyzer error: `The property 'length' can't be unconditionally accessed because the receiver can be 'null'.` — Dart stops you before running.

Run it with:

```bash
dart run bin/Day04_NullSafety/null_aware_access.dart
```

---

### 3. `null_aware_assignment.dart` — `??=` (give only if empty)

Code

```dart
//use of (??=)
void main() {
  String? name = null;                // 1
  name ??= "It's Himel not null";    // 2
  print(name);                         // 3

  String? name2;                       // 4
  name2 ??= "It's Kowshik not null"; // 5
  print(name2);                        // 6

  String? city = "It's Tokyo not null nor Dhaka"; // 7
  city ??= "It's Dhaka not null nor Tokyo";       // 8
  print(city);                        // 9
}
```

Line-by-line (baby):
- 1: box empty.
- 2: put a toy because box is empty.
- 3: show it.
- 4–6: another empty box — put and show a toy.
- 7–9: box already has a toy; `??=` does nothing.

Broken tiny change:

```dart
void main() {
  String name;        // wrong: non-nullable without initial value
  name ??= "X";      // wrong use
}
```

Error (what happens):
- Analyzer/compile-time error: declaring a non-nullable `String` without initializing it and then using `??=` is invalid — Dart requires definite assignment.

Run it with:

```bash
dart run bin/Day04_NullSafety/null_aware_assignment.dart
```

---

### 4. `null_coalescing_operator.dart` — `??` (use default)

Code

```dart
//use of (??)
void main() {
  String? name = null;      // 1
  print(name ?? "Guest"); // 2

  String? name2 = "Himel"; // 3
  print(name2 ?? "Guest"); // 4
}
```

Line-by-line (baby):
- 1: empty box.
- 2: show default `Guest` because box is empty.
- 3: box with `Himel`.
- 4: show `Himel`.

Broken tiny change:

```dart
void main() {
  String? name = null;
  print(name.length ?? "Guest"); // wrong: calling .length on nullable
}
```

Error (what happens):
- Compile-time analyzer error: you tried to access `.length` on a nullable value; Dart will reject it.

Run it with:

```bash
dart run bin/Day04_NullSafety/null_coalescing_operator.dart
```

---

### 5. `null_assertion_operator.dart` — `!` (I promise)

Code

```dart
//use of (!)
void main() {
  String? name2 = "Himel"; // 1
  print(name2!);            // 2
  print(name2!.length);     // 3

  String? name = null;      // 4
  print(name!);             // 5 -> will crash
  print(name!.length);      // 6 -> won't run
}
```

Line-by-line (baby):
- 1–3: we have a toy, we force it and it's fine.
- 4–6: box is empty; forcing (`!`) makes the program crash while running.

Broken tiny change (my faulty code):

```dart
void main() {
  String? name = null;
  print(name!); // BAD: crash at runtime
}
```

Error (what happens):
- Runtime error: `Unhandled exception: Null check operator used on a null value` — program stops when it hits this.

Run it with:

```bash
dart run bin/Day04_NullSafety/null_assertion_operator.dart
```

---

### 6. `late.dart` — `late` (save spot and fill later)

Code

```dart
//use of late
void main() {
  late String name; // 1
  name = "Himel";  // 2
  print(name);      // 3
}
```

Line-by-line (baby):
- 1: make a saved spot but don't fill it yet.
- 2: put the toy later.
- 3: print the toy.

Broken tiny change:

```dart
void main() {
  late String name;
  print(name); // WRONG: used before filled
}
```

Error (what happens):
- Runtime error: `LateInitializationError: Field 'name' has not been initialized.` — program crashes when using it before assignment.

Run it with:

```bash
dart run bin/Day04_NullSafety/late.dart
```

---

### 7. `late_final.dart` — `late final` (one-time fill)

Code

```dart
//use of late final
void main() {
  late final String country; // 1
  country = "Bangladesh";   // 2
  print(country);            // 3
}
```

Line-by-line (baby):
- 1: make a locked spot to fill later.
- 2: put the toy once.
- 3: show the toy; you cannot change it again.

Broken tiny change:

```dart
void main() {
  late final String country;
  country = "A";
  country = "B"; // WRONG: trying to set twice
}
```

Error (what happens):
- Runtime error when setting twice: Dart will raise an error about re-initialization or a `LateInitializationError` depending on context.

Run it with:

```bash
dart run bin/Day04_NullSafety/late_final.dart
```

---

### 8. `cascade_operator.dart` — `..` (chain the work)

Code

```dart
// use of (..)
class Student {
  String name = "";
  int age = 0;
}

void main() {
  Student student = Student()
    ..name = "Himel"
    ..age = 25;
  print(student.name);
  print(student.age);
}
```

Line-by-line (baby):
- 1: I made a student box.
- 2: I used `..` to set the name and age in one smooth chain.
- 3: I printed the name.
- 4: I printed the age.

Broken tiny change:

```dart
void main() {
  Student? student = null;
  student.name = "Himel"; // wrong: student can be null
}
```

Error (what happens):
- Compile-time analyzer error: the receiver can be `null`, so Dart stops you before running.

Run it with:

```bash
dart run bin/Day04_NullSafety/cascade_operator.dart
```

---

### 9. `null_aware_cascade.dart` — `?..` (only if not empty)

Code

```dart
// use of (?..)
class Student {
  String name = "";

  void greet() {
    print("Hello, I am $name");
  }
}

void main() {
  Student? student = null;
  student
    ?..name = "Himel"
    ..greet();

  Student? student2 = Student();
  student2
    ?..name = "Himel"
    ..greet();
}
```

Line-by-line (baby):
- 1: I made a student box that may be empty.
- 2: I used `?..` to be safe and only change it if it exists.
- 3: I tried to greet only when the student is really there.
- 4: I made another student that is not empty.
- 5: I used the safe cascade again and it worked.

Broken tiny change:

```dart
void main() {
  Student? student = null;
  student..name = "Himel"; // wrong: no safe check
}
```

Error (what happens):
- Compile-time analyzer error: `?..` is needed when the receiver can be `null`.

Run it with:

```bash
dart run bin/Day04_NullSafety/null_aware_cascade.dart
```

---

### 10. `null_aware_spread_operator.dart` — `...?...` (add only if not empty)

Code

```dart
//use of (...?)
void main() {
  List<int>? numbers = null;
  List<int> result = [1, ...?numbers, 5];
  print(result);

  List<int>? numbers2 = [2, 3, 4];
  List<int> result2 = [1, ...?numbers2, 5];
  print(result2);
}
```

Line-by-line (baby):
- 1: I made a list that may be empty.
- 2: I used `...?` to spread values only if the list really exists.
- 3: I printed the result.
- 4: I made another list that has values.
- 5: I spread the values in and printed them.

Broken tiny change:

```dart
void main() {
  List<int>? numbers = null;
  List<int> result = [1, ...numbers, 5]; // wrong: forgot the safe `?`
}
```

Error (what happens):
- Compile-time analyzer error: Dart wants the safe spread form when the list can be `null`.

Run it with:

```bash
dart run bin/Day04_NullSafety/null_aware_spread_operator.dart
```

---

## Summary

- `?` = box can be empty.
- `?.` = ask nicely; don't poke empty box.
- `??` = give me a fallback toy.
- `??=` = put toy only if box is empty.
- `!` = I promise it's not empty (danger if wrong).
- `late` = saved spot to fill later (must fill before use).
- `late final` = fill once later, then locked.
- `..` = chain many actions smoothly.
- `?..` = do the chain only if the object is not null.
- `...?` = spread values only if the list is not null.

---

