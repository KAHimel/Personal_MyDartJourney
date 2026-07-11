# Day 03 — Variables

## Objective

- Understand what variables are and why they're used in Dart.
- Learn the different data types and variable declaration methods.
- Explore const, final, static, and dynamic variables.
- Apply variable naming conventions and best practices.

## Table of Contents

1. [Explanation](#explanation)
2. [Basic Data Types](#basic-data-types)
3. [Static Variables](#static-variables)
4. [Dynamic Variables](#dynamic-variables)
5. [Final Variables](#final-variables)
6. [Const Variables](#const-variables)
7. [Comparison Table](#comparison-table)
8. [Key Differences](#key-differences)
9. [Best Practices](#best-practices)
10. [Summary](#summary)
11. [Practice Exercise](#practice-exercise)
12. [Resources](#resources)

---

## Explanation

Variables are containers that store data values. In Dart, everything is an object, and each variable holds a reference to an object. Variables allow you to store, manipulate, and reuse data throughout your program.

### Basic Syntax

```dart
// Type annotation (explicit type)
int number = 10;

// Type inference (implicit type)
var price = 99.99;
```

### Variable Naming Rules
- Must start with a letter or underscore (_)
- Can contain letters, digits, and underscores
- Use camelCase for variable names
- Avoid reserved keywords

---

## Basic Data Types

### Example - variables.dart

```dart
void main() {
  int number = 10;
  double price = 99.99;
  bool isAvailable = true;
  String name = "Kowshik";
  String name2 = "Himel";

  print(number);
  print(price);
  print(isAvailable);
  print(name);
  print(name2);
}
```

Basic data types are fundamental variable types used to store different kinds of values.

### 1. **int** - Integer Numbers
- Whole numbers without decimal points
- Range: -2^63 to 2^63 - 1
- Used for counting and indexing

```dart
int age = 25;
int year = 2024;
int count = -10;
```

### 2. **double** - Floating Point Numbers
- Numbers with decimal points
- Used for precise calculations
- Supports scientific notation

```dart
double price = 99.99;
double pi = 3.1416;
double temperature = -5.5;
```

### 3. **String** - Text Data
- Sequence of characters
- Enclosed in single or double quotes
- Supports string interpolation with ${}

```dart
String name = "Kowshik";
String message = 'Learning Dart';
String greeting = "Hello, $name!";
```

### 4. **bool** - Boolean Values
- Only two values: `true` or `false`
- Used in conditional statements
- Essential for logic control

```dart
bool isAvailable = true;
bool isStudent = false;
bool hasPermission = true;
```

### 5. **var** - Type Inference
- The type is inferred from the assigned value
- Once assigned, the type cannot change
- Good for readability when type is obvious

```dart
var name = "Kowshik";  // String
var age = 25;          // int
var salary = 50000.50; // double
```

### Run

```bash
dart run bin/Day03_Variables/variables.dart
```

### Output

```text
10
99.99
true
Kowshik
Himel
```

---

## Static Variables

### Overview
Static variables belong to the class, not to individual instances. They are shared among all instances of the class.

### Example - static_variable.dart

```dart
class Student {
  static String university = "BAIUST";
}

void main() {
  print(Student.university);
}
```

### Characteristics
- **Belong to the class**, not to instances
- **Shared among all instances** of the class
- **Accessed using the class name**, not an instance
- **Initialized once** when the class is loaded
- **Mutable** - can be changed

### Usage
```dart
class Student {
  static String university = "BAIUST";
  static int totalStudents = 0;
}

void main() {
  print(Student.university);  // Output: BAIUST
  
  // Modify static variable
  Student.university = "DU";
  Student.totalStudents = 500;
  
  print(Student.university);     // Output: DU
  print(Student.totalStudents);  // Output: 500
}
```

### Run

```bash
dart run bin/Day03_Variables/static_variable.dart
```

### Output

```text
BAIUST
```

### When to use static:
- Shared data across all instances
- Utility functions
- Constants that belong to a class
- Counters for tracking class-level information

---

## Dynamic Variables

### Overview
Dynamic variables can hold any type of value, and the type can change during execution. Use with caution as it removes type safety.

### Example - dynamic_variable.dart

```dart
void main() {
  dynamic value = "The value of pi is approximately";
  print(value);

  value = 3.1416;
  print(value);
}
```

Dynamic variables are useful when the type is unknown at compile time or truly variable.

### Characteristics
- **Can hold any type** of value
- **Type can change** during execution
- **Less type-safe** than other variable types
- Useful when the type is truly unknown at compile time

### Usage
```dart
dynamic value = 10;           // int
print(value);

value = "Hello";              // String
print(value);

value = 3.14;                 // double
print(value);

value = true;                 // bool
print(value);
```

### Run

```bash
dart run bin/Day03_Variables/dynamic_variable.dart
```

### Output

```text
The value of pi is approximately
3.1416
```

### Comparison: var vs dynamic
- **var**: Type is determined at assignment and cannot change
- **dynamic**: Type can change at runtime

```dart
void main() {
  var a = "Hello";
  // a = 123;  // ERROR: var cannot change type
  
  dynamic b = "Hello";
  b = 123;  // OK: dynamic can change type
}
```

### When to use dynamic:
- Working with APIs that return unknown types
- Handling JSON data
- When explicitly necessary for flexibility
- Avoid when possible for better type safety

---

## Final Variables

### Overview
Final variables are runtime constants. The value is determined at runtime and cannot be changed after initialization.

### Example - final_variable.dart

```dart
void main() {
  final name = "Kowshik is";
  final String msg = "Learning Dart";
  print(name);
  print(msg);
}
```

Final variables are determined at runtime and become immutable after initialization.

### Characteristics
- **Value determined at runtime**
- **Immutable** - cannot be changed after initialization
- **More flexible than const** - can use runtime values
- **Type can be inferred** or explicitly declared

### Usage
```dart
void main() {
  final String appName = "MyApp";
  final int year = DateTime.now().year;
  final double pi = 3.1416;
  
  print(appName);  // Output: MyApp
  print(year);     // Output: 2026 (current year)
  print(pi);       // Output: 3.1416
  
  // appName = "NewApp";  // ERROR: Cannot modify final variable
}
```

### Run

```bash
dart run bin/Day03_Variables/final_variable.dart
```

### Output

```text
Kowshik is
Learning Dart
```

### Class Instance Variables
```dart
class User {
  final String username;
  final int id;
  
  User(this.username, this.id);
}

void main() {
  User user = User("Kowshik", 123);
  print(user.username);  // Output: Kowshik
  // user.username = "Himel";  // ERROR: Cannot modify final
}
```

### When to use final:
- Values that depend on runtime calculations
- Class instance variables
- Constructor parameters that shouldn't be modified
- Variables that are computed once and used multiple times

---

## Const Variables

### Overview
Const variables are compile-time constants. The value must be known at compile time and cannot be changed.

### Example - const_variable.dart

```dart
void main() {
  const appName = "MyApp";
  const String appVersion = "1.0.0";
  print(appName);
  print(appVersion);
}
```

Const variables provide compile-time constant values with deep immutability.

### Characteristics
- **Value must be known at compile time**
- **Immutable** - cannot be changed after initialization
- **Cannot use runtime values**
- **More restrictive than final** - for truly constant values

### Usage
```dart
void main() {
  const String apiEndpoint = "https://api.example.com";
  const int maxRetries = 3;
  const double pi = 3.14159;
  
  print(apiEndpoint);  // Output: https://api.example.com
  print(maxRetries);   // Output: 3
  print(pi);           // Output: 3.14159
  
  // const int year = DateTime.now().year;  // ERROR: Cannot use runtime value
}
```

### Run

```bash
dart run bin/Day03_Variables/const_variable.dart
```

### Output

```text
MyApp
1.0.0
```

### Deep Immutability
```dart
const List<int> numbers = [1, 2, 3];
print(numbers);  // Output: [1, 2, 3]

// numbers.add(4);  // ERROR: Cannot modify const list
// numbers[0] = 10;  // ERROR: Cannot modify elements
```

### When to use const:
- Configuration values that never change
- Mathematical constants
- String literals that won't change
- Compile-time constants
- API endpoints or fixed configuration

---

## Comparison Table

| Feature | int/double/String/bool | var | static | dynamic | final | const |
|---------|--------|-----|--------|---------|-------|-------|
| **Type Inference** | No | Yes | Yes/No | Yes | Yes | Yes |
| **Mutable** | Yes | Yes | Yes | Yes | No | No |
| **Compile-time** | No | No | No | No | No | Yes |
| **Runtime** | Yes | Yes | Yes | Yes | Yes | No |
| **Use Case** | Basic types | Type inference | Class vars | Any type | Runtime const | Compile const |

---

## Key Differences

### const vs final
- **const**: Must be known at compile time, immutable, deep immutability
- **final**: Determined at runtime, immutable, object reference immutable

```dart
void main() {
  const int x = 10;  // OK - compile time constant
  
  final int y = DateTime.now().year;  // OK - runtime value
  // const int z = DateTime.now().year;  // ERROR - cannot use runtime value
}
```

### var vs dynamic
- **var**: Type is determined at assignment and doesn't change
- **dynamic**: Type can change at runtime

```dart
void main() {
  var a = "Hello";
  // a = 123;  // ERROR: var cannot change type
  
  dynamic b = "Hello";
  b = 123;  // OK: dynamic can change type
}
```

---

## Best Practices

1. **Use explicit types** for clarity:
   ```dart
   String name = "Kowshik";  // Better than var name = "Kowshik";
   ```

2. **Use const for constants** that won't change:
   ```dart
   const String apiEndpoint = "https://api.example.com";
   ```

3. **Use final for instance variables**:
   ```dart
   class User {
     final String username;
     User(this.username);
   }
   ```

4. **Use static for class-level data**:
   ```dart
   class Config {
     static const String appName = "MyApp";
   }
   ```

5. **Avoid dynamic** when possible:
   ```dart
   // Avoid
   dynamic value = 10;
   
   // Prefer
   int value = 10;
   ```

6. **Use meaningful variable names**:
   ```dart
   // Avoid
   String x = "John";
   
   // Prefer
   String userName = "John";
   ```

---

## Summary

- **Basic data types** (int, double, String, bool) store primitive values
- **var** uses type inference for cleaner code
- **static** variables are shared across all instances
- **dynamic** allows any type but sacrifices type safety
- **final** for runtime constants that can't change
- **const** for compile-time constants
- Choose the right variable type for better code clarity and maintainability

---

## Practice Exercise

Create a program that demonstrates all variable types:

```dart
class AppConfig {
  static const String appName = "MyApp";
  static int userCount = 0;
}

void main() {
  // Basic types
  int age = 20;
  double height = 5.9;
  String name = "Student";
  bool isActive = true;
  
  // Type inference
  var city = "Dhaka";
  
  // Runtime constant
  final DateTime enrollDate = DateTime.now();
  
  // Dynamic (use carefully)
  dynamic info = "Initial info";
  info = 25;  // Can change type
  
  // Static access
  print("App: ${AppConfig.appName}");
  
  print("Name: $name, Age: $age, Height: $height");
  print("Active: $isActive, City: $city");
  print("Enrolled: $enrollDate");
}
```

---

## Resources

- [Dart Official Documentation - Variables](https://dart.dev/guides/language/language-tour#variables)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Effective Dart - Style Guide](https://dart.dev/guides/language/effective-dart/style)
```dart
void main() {
  int number = 10;
  double price = 99.99;
  bool isAvailable = true;
  String name = "Kowshik";
  String name2 = "Himel";

  print(number);
  print(price);
  print(isAvailable);
  print(name);
  print(name2);
}
```

### 1. **int** - Integer Numbers
- Whole numbers without decimal points
- Range: -2^63 to 2^63 - 1
- Used for counting and indexing

```dart
int age = 25;
int year = 2024;
int count = -10;
```

### 2. **double** - Floating Point Numbers
- Numbers with decimal points
- Used for precise calculations
- Supports scientific notation

```dart
double price = 99.99;
double pi = 3.1416;
double temperature = -5.5;
```

### 3. **String** - Text Data
- Sequence of characters
- Enclosed in single or double quotes
- Supports string interpolation with ${}

```dart
String name = "Kowshik";
String message = 'Learning Dart';
String greeting = "Hello, $name!";
```

### 4. **bool** - Boolean Values
- Only two values: `true` or `false`
- Used in conditional statements
- Essential for logic control

```dart
bool isAvailable = true;
bool isStudent = false;
bool hasPermission = true;
```

### 5. **var** - Type Inference
- The type is inferred from the assigned value
- Once assigned, the type cannot change
- Good for readability when type is obvious

```dart
var name = "Kowshik";  // String
var age = 25;          // int
var salary = 50000.50; // double
```

---

## Static Variables

### Overview
Static variables belong to the class, not to individual instances. They are shared among all instances of the class.

### Example - static_variable.dart
```dart
class Student {
  static String university = "BAIUST";
}

void main() {
  print(Student.university);
}
```

### Characteristics
- **Belong to the class**, not to instances
- **Shared among all instances** of the class
- **Accessed using the class name**, not an instance
- **Initialized once** when the class is loaded
- **Mutable** - can be changed

### Usage
```dart
class Student {
  static String university = "BAIUST";
  static int totalStudents = 0;
}

void main() {
  print(Student.university);  // Output: BAIUST
  
  // Modify static variable
  Student.university = "DU";
  Student.totalStudents = 500;
  
  print(Student.university);     // Output: DU
  print(Student.totalStudents);  // Output: 500
}
```

### When to use static:
- Shared data across all instances
- Utility functions
- Constants that belong to a class
- Counters for tracking class-level information

---

## Dynamic Variables

### Overview
Dynamic variables can hold any type of value, and the type can change during execution. Use with caution as it removes type safety.

### Example - dynamic_variable.dart
```dart
void main() {
  dynamic value = "The value of pi is approximately";
  print(value);

  value = 3.1416;
  print(value);
}
```

### Characteristics
- **Can hold any type** of value
- **Type can change** during execution
- **Less type-safe** than other variable types
- Useful when the type is truly unknown at compile time

### Usage
```dart
dynamic value = 10;           // int
print(value);

value = "Hello";              // String
print(value);

value = 3.14;                 // double
print(value);

value = true;                 // bool
print(value);
```

### When to use dynamic:
- Working with APIs that return unknown types
- Handling JSON data
- When explicitly necessary for flexibility
- Avoid when possible for better type safety

### Comparison: var vs dynamic
- **var**: Type is determined at assignment and cannot change
- **dynamic**: Type can change at runtime

```dart
void main() {
  var a = "Hello";
  // a = 123;  // ERROR: var cannot change type
  
  dynamic b = "Hello";
  b = 123;  // OK: dynamic can change type
}
```

---

## Final Variables

### Overview
Final variables are runtime constants. The value is determined at runtime and cannot be changed after initialization.

### Example - final_variable.dart
```dart
void main() {
  final name = "Kowshik is";
  final String msg = "Learning Dart";
  print(name);
  print(msg);
}
```

### Characteristics
- **Value determined at runtime**
- **Immutable** - cannot be changed after initialization
- **More flexible than const** - can use runtime values
- **Type can be inferred** or explicitly declared

### Usage
```dart
void main() {
  final String appName = "MyApp";
  final int year = DateTime.now().year;
  final double pi = 3.1416;
  
  print(appName);  // Output: MyApp
  print(year);     // Output: 2026 (current year)
  print(pi);       // Output: 3.1416
  
  // appName = "NewApp";  // ERROR: Cannot modify final variable
}
```

### When to use final:
- Values that depend on runtime calculations
- Class instance variables
- Constructor parameters that shouldn't be modified
- Variables that are computed once and used multiple times

### Class Instance Variables
```dart
class User {
  final String username;
  final int id;
  
  User(this.username, this.id);
}

void main() {
  User user = User("Kowshik", 123);
  print(user.username);  // Output: Kowshik
  // user.username = "Himel";  // ERROR: Cannot modify final
}
```

---

## Const Variables

### Overview
Const variables are compile-time constants. The value must be known at compile time and cannot be changed.

### Example - const_variable.dart
```dart
void main() {
  const appName = "MyApp";
  const String appVersion = "1.0.0";
  print(appName);
  print(appVersion);
}
```

### Characteristics
- **Value must be known at compile time**
- **Immutable** - cannot be changed after initialization
- **Cannot use runtime values**
- **More restrictive than final** - for truly constant values

### Usage
```dart
void main() {
  const String apiEndpoint = "https://api.example.com";
  const int maxRetries = 3;
  const double pi = 3.14159;
  
  print(apiEndpoint);  // Output: https://api.example.com
  print(maxRetries);   // Output: 3
  print(pi);           // Output: 3.14159
  
  // const int year = DateTime.now().year;  // ERROR: Cannot use runtime value
}
```

### When to use const:
- Configuration values that never change
- Mathematical constants
- String literals that won't change
- Compile-time constants
- API endpoints or fixed configuration

### Deep Immutability
```dart
const List<int> numbers = [1, 2, 3];
print(numbers);  // Output: [1, 2, 3]

// numbers.add(4);  // ERROR: Cannot modify const list
// numbers[0] = 10;  // ERROR: Cannot modify elements
```

---

## Comparison Table

| Feature | int/double/String/bool | var | static | dynamic | final | const |
|---------|--------|-----|--------|---------|-------|-------|
| **Type Inference** | No | Yes | Yes/No | Yes | Yes | Yes |
| **Mutable** | Yes | Yes | Yes | Yes | No | No |
| **Compile-time** | No | No | No | No | No | Yes |
| **Runtime** | Yes | Yes | Yes | Yes | Yes | No |
| **Use Case** | Basic types | Type inference | Class vars | Any type | Runtime const | Compile const |

---

## Key Differences

### const vs final
- **const**: Must be known at compile time, immutable, deep immutability
- **final**: Determined at runtime, immutable, object reference immutable

```dart
void main() {
  const int x = 10;  // OK - compile time constant
  
  final int y = DateTime.now().year;  // OK - runtime value
  // const int z = DateTime.now().year;  // ERROR - cannot use runtime value
}
```

### var vs dynamic
- **var**: Type is determined at assignment and doesn't change
- **dynamic**: Type can change at runtime

```dart
void main() {
  var a = "Hello";
  // a = 123;  // ERROR: var cannot change type
  
  dynamic b = "Hello";
  b = 123;  // OK: dynamic can change type
}
```

---

## Best Practices

1. **Use explicit types** for clarity:
   ```dart
   String name = "Kowshik";  // Better than var name = "Kowshik";
   ```

2. **Use const for constants** that won't change:
   ```dart
   const String apiEndpoint = "https://api.example.com";
   ```

3. **Use final for instance variables**:
   ```dart
   class User {
     final String username;
     User(this.username);
   }
   ```

4. **Use static for class-level data**:
   ```dart
   class Config {
     static const String appName = "MyApp";
   }
   ```

5. **Avoid dynamic** when possible:
   ```dart
   // Avoid
   dynamic value = 10;
   
   // Prefer
   int value = 10;
   ```

6. **Use meaningful variable names**:
   ```dart
   // Avoid
   String x = "John";
   
   // Prefer
   String userName = "John";
   ```

---

## Summary

- **Basic data types** (int, double, String, bool) store primitive values
- **var** uses type inference for cleaner code
- **static** variables are shared across all instances
- **dynamic** allows any type but sacrifices type safety
- **final** for runtime constants that can't change
- **const** for compile-time constants
- Choose the right variable type for better code clarity and maintainability

---
