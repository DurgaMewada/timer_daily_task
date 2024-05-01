# 5.1 Flutter Buttons

<p>
<img src = "https://github.com/DurgaMewada/timer_daily_task/assets/149373536/4089bffe-fc11-4335-a92d-99c2593959ed" width=50% height=35% >
</p>

# 5.2 Asynchronous Programming

## Q. What is  Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, 
without waiting for each other to complete before moving on to the next task.


## Q. What is Future Class ?
In Dart, a Future represents a value that may not be available yet. It encapsulates an asynchronous operation and provides a way 
to handle the result or error when it becomes available. The Future can be in one of three states: uncompleted, completed with a
value, or completed with an error with talk about in detail in other blog.


## Q. What is Duration class & Future.delayed() constructor with Example ?

**Duration class :** A span of time, such as 27 days, 4 hours, 12 minutes, and 3 seconds. A Duration represents a difference from one point in time to another.

**Future.delayed() constructor:** Creates a future that runs its computation after a delay. The computation will be executed after the given duration has passed,
and the future is completed with the result of the computation.

## Examples

```javascript
                ----Duration class----

 import 'dart:async';
 import 'dart:io';

 void main(){
  Timer(
    Duration(seconds: 3),
    (){
      print("Hello Dart");
    }
  );
 }
```
```javascript
              ----Future.delayed() constructor----

 import 'dart:async';
 import 'dart:io';

 void main(){
  Timer(
    Duration(seconds: 3),
    (){
      print("Hello Future");
    }
  );
 }

```

## Q. What is the Use of the async & await keyword?

The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed. 
It can only be used inside an async function. When an await expression is encountered, the function is suspended, and control is returned to the caller until the awaited operation completes. 


## Q. What is Recursion ? With Example. 

A recursive function repeats multiple times until it returns the final output. It allows programmers to solve complex problems with minimal code.

## Examples

```javascript
 import 'dart:async';
 import 'dart:io';

 void main(){
  Timer.periodic(Duration(seconds: 3), (timer) {
    print("Recursion");
   });
 }
```


## Q. What is Timer class with example ?

Timer class abstract interface...
A countdown timer that can be configured to fire once or repeatedly. The timer counts down from the specified duration to 0.


## Examples

```javascript
  import 'dart:async';
  import 'dart:io';

 void main(){
  Timer(Duration(seconds: 3), () {
    print("Timer");
  });
 }
```


## Q. What is Timer.periodic and use with Example?

Creates a new repeating timer. The callback is invoked repeatedly with duration intervals until canceled with the cancel function.


## Examples

```javascript
   import 'dart:async';
   import 'dart:io';

 void main(){
  Timer.periodic(Duration(seconds: 3), (timer) {
    print("Hello Dart");
   });
 }
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
