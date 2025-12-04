[⬅ Back to Syllabus](../../README.md)

# ✅ WEEK 1 — Dart Basics

Welcome to **Week 1 of your Flutter journey** 🎉  
This week, you will learn the **Dart programming language**, which is the language used to build Flutter apps.

Think of Dart as the *brain* of your Flutter app.  
If you understand Dart, Flutter becomes much easier.

---

## 📌 Topics You Will Learn

- Variables and Types  
- Functions and Parameters  
- Null Safety Basics  
- Classes, Constructors, and Methods  
- Async / Await and Futures  
- Lists, Maps, and Sets  

---

## 🧠 What is Dart?

Dart is a programming language created by **Google**.

Flutter apps are written in Dart.  
Every button, screen, calculation, and logic in Flutter uses Dart.

You can also practice Dart online using **DartPad**:  
👉 https://dartpad.dev  

---

## 1. Variables and Types

A **variable** is like a box where you store data.

### Examples

```dart
int age = 21;           // store whole number
double height = 5.9;    // store decimal number
String name = "Nishan"; // store text
bool isStudent = true;  // store true or false
```

## 2. Functions and Parameters

A **function** is a block of code that does some work for you.

### Example (your script):

```dart
int add(int a, int b) => a + b;
```

This means:

- The function is named add

- It takes 2 numbers: a and b

- It returns their sum

### Another example:

```dart
void greet(String name) {
  print("Hello " + name);
}
```

When you call:

```dart
greet("Nishan");
```

Output will be:

```dart
Hello Nishan
```

## 3. Null Safety Basics

In Dart, null means no value.

### Example:
```dart
String? name = null;
```

The ? means:
✅ This variable is allowed to hold null

Without ?:
```dart
String name;  // ❌ error if not given value
```

With ?:
```dart
String? name; // ✅ allowed (can be null)
```
This helps Dart avoid app crashes.

## 4. Classes, Constructors & Methods

A class is a blueprint for making objects.

### Example:

```dart
class Student {
  String name;
  int age;

  // Constructor
  Student(this.name, this.age);

  // Method
  void display() {
    print("Name: $name, Age: $age");
  }
}
```

Now use it like this:
```dart
Student s1 = Student("Nishan", 21);
s1.display();
```

Output:
```dart
Name: Nishan, Age: 21
```

So remember:

- Class = blueprint

- Constructor = gives value

- Method = function inside a class

## 5. Async / Await and Futures (Simple Idea)

Some tasks take time, for example:

- Loading data from internet

- Reading a file

- Getting location

Dart uses **async** and **await** for this.

### Example:
```dart
Future<String> getData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data Loaded";
}
```

Use:
```dart
void main() async {
  String result = await getData();
  print(result);
}
```

Meaning:

**async** → this function takes time

**await** → wait for the result

## 6. Lists, Maps & Sets
✅ List (stores many values in order)
```dart
List<String> fruits = ["Apple", "Banana", "Mango"];
```

Add item:
```dart
fruits.add("Orange");
```

Remove item:
```dart
fruits.remove("Banana");
```
✅ Map (key and value)
```dart
Map<String, int> marks = {
  "Math": 80,
  "Science": 90
};
```

Get value:
```dart
print(marks["Math"]); // 80
```
✅ Set (no duplicate values)
```dart
Set<int> numbers = {1, 2, 3, 3, 4};
print(numbers); // {1, 2, 3, 4}
```

No duplicates allowed in a Set.

🧪 Practice Example

### Your example again:
```dart
int add(int a, int b) => a + b;
```

Test:
```dart
void main() {
  print(add(10, 20));  // Output: 30
}
```

Try different numbers.

## 📚 ASSIGNMENTS
### ✅ Assignment 1 — CLI Calculator

Create a command-line calculator that can:

- Add
- Subtract
- Multiply
- Divide

### Example:
```dart
void main() {
  int a = 10;
  int b = 5;

  print("Addition: ${a + b}");
  print("Subtraction: ${a - b}");
  print("Multiplication: ${a * b}");
  print("Division: ${a / b}");
}
```

Your task:

- Add more numbers
- Add user input (optional)
- Improve it

##✅ Assignment 2 — Notes List (CRUD using List)

Create a notes app using a **List.**

### Example:
```dart
void main() {
  List<String> notes = [];

  // CREATE
  notes.add("Learn Dart");
  notes.add("Learn Flutter");

  // READ
  print(notes);

  // UPDATE
  notes[0] = "Master Dart";

  // DELETE
  notes.remove("Learn Flutter");

  print(notes);
}
```

Your task:

- Add 5 notes
- Update one note
- Delete one note
- Print final list

## 🎯 Week 1 Goal

By the end of this week, you should be able to:

✅ Understand Dart basics
✅ Use functions
✅ Work with List, Map, Set
✅ Create simple CLI programs
✅ Feel confident with logic
