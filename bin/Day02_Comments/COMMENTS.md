# Day 02 — Comments

## Objective

- Understand why comments are important in Dart.
- Learn the three common types of comments in Dart.
- See how comments are used in the attached example file.

## Files in this folder

1. `comments.dart` — shows single-line, multi-line, and documentation comments

This file shows the main comment ideas in a very small and simple way.

---

For each file below: code, a tiny line-by-line baby explanation, then a slightly broken version and the error you would see.

### 1. `comments.dart` — comments in Dart

Code

```dart
void main() {
  // This is a single line comment.
  print("//This is a single line comment.");

  /*
  This is a
  multi-line
  comment.
  */
  print("/*This is a");
  print("multi-line");
  print("comment.*/");

  /// This is
  /// a documentation
  /// comment
  print("///This is a ");
  print("/// documentation comment.");
}
```

Line-by-line (baby):
- 1: I made the main place where the program starts.
- 2: I wrote a short note that Dart ignores.
- 3: I printed the text inside the quotes.
- 4–8: I wrote a bigger note across several lines.
- 9–11: I printed the multi-line comment text.
- 12–14: I wrote a documentation-style note.
- 15–16: I printed the documentation comment text.

Broken tiny change:

```dart
void main() {
  /*
  This comment is not closed
  print("Oops");
}
```

Error (what happens):
- Compile-time error: `Unexpected token` or `unterminated comment` depending on the editor.

Run it with:

```bash
dart run bin/Day02_Comments/comments.dart
```

---

## Explanation

Comments help explain code so it is easier to understand later, whether by you or by another programmer. In Dart, comments are ignored by the compiler and do not affect how the program runs.

### 1. Single-line comments

A single-line comment starts with `//` and continues until the end of the line. It is useful for short notes.

```dart
void main() {
  // This is a single line comment.
  print("//This is a single line comment.");
}
```

### 2. Multi-line comments

A multi-line comment starts with `/*` and ends with `*/`. It is useful when you want to comment out several lines at once.

```dart
void main() {
  /*
  This is a
  multi-line
  comment.
  */
  print("/*This is a");
  print("multi-line");
  print("comment.*/");
}
```

### 3. Documentation comments

Documentation comments start with `///` and are often used to describe a function, class, or library. They are especially helpful when writing public APIs.

```dart
void main() {
  /// This is
  /// a documentation
  /// comment  
  print("///This is a ");
  print("/// documentation comment.");
}
```

In the attached example, the program uses all three comment styles, but the text inside the `print()` statements is what appears on the screen. The comments themselves are not executed.

## Run

```bash
dart run bin/Day02_Comments/comments.dart
```

## Output

```text
//This is a single line comment.
/*This is a
multi-line
comment.*/
///This is a 
/// documentation comment.
```

Using comments properly makes your code easier to read, easier to maintain, and better for teamwork.
