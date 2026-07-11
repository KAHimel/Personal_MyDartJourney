# Day 01 — Hello World!

## Objective

- Learn the basic structure of a Dart program.
- Understand how to print text to the console using `print()`.

## Files in this folder

1. `helloworld.dart` — the first Dart program that prints a message

This file shows the simplest possible Dart program in a very small and easy way.

---

For each file below: code, a tiny line-by-line baby explanation, then a slightly broken version and the error you would see.

### 1. `helloworld.dart` — first program

Code

```dart
void main() {
  print("Hello World!");
}
```

Line-by-line (baby):
- 1: I made the main place where the program starts.
- 2: I told Dart to show the text `Hello World!`.
- 3: I closed the main function.

Broken tiny change:

```dart
void main() {
  print("Hello World!") // wrong: missing semicolon
}
```

Error (what happens):
- Compile-time error: `Expected ';' after this.`

Run it with:

```bash
dart run bin/Day01_HelloWorld/helloworld.dart
```

---

## Explanation

```dart
void main() {
  print("Hello World!");
}
```

- `void main()` starts the program. In Dart, every executable program needs a `main()` function.
- The opening `{` marks the beginning of the function body.
- `print("Hello World!");` displays the text `Hello World!` in the console.
- The closing `}` ends the `main()` function.

## Run

```bash
dart run bin/Day01_HelloWorld/helloworld.dart
```

## Output

```text
Hello World!
```


