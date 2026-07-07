# Day 02 — Comments

## Objective

- Understand why comments are important in Dart.
- Learn the three common types of comments in Dart.
- See how comments are used in the attached example file.

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
/// This is a documentation comment.
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
