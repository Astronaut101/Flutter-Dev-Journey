# Flutter Development Journey

This is a journey on learning Flutter and exploring its ecosystem of features and its amazingly fresh functionalities of being able to build cross-platform applications. Most especially, to have fun along the way!! 😎💥

----

## Flutter Dev 0

As with all exploration to a new programming language and framework, we start with its installation and preparing all of the tools needed to help us get started with building our first Flutter App!

Based from the [Flutter Documentation](https://docs.flutter.dev/get-started/install/windows), as a Windows' user we must first make sure that we are able to call flutter from the Command Line to make sure it is working as expected.

After installing all the needed dependencies, we are now going to create a minimal Flutter app from templates, run it, and experience "hot reload" after you make changes to the app!

Our first demo Flutter App

[First Demo Flutter App](/img/dev0_flutter_demo_app.png)

*NOTE*: Do not test the performance of your app with debug and hot reload enabled! In debug mode, we are able to utilize developer features such as hot reload and step debugging. Once you're ready to analyze performance or release your app, you'll want to use Flutter's "profile" or "release" build modes.

### Flutter's Build Modes

The Flutter tooling supports three modes when compiling your Flutter app:

1. Using *debug* mode during development, when you want to enable the *hot reload* feature
2. Use *profile* mode when you want to analyze performance
3. Use *release* mode when you are ready to release the app

#### Debug Mode

In debug mode, we are able to do the following:

* Assertions
* Enabled Service Extensions
* Optimized compilations for fast development and run cycles
* Enabled debugging, and tools supporting level debugging

#### Release Mode

In release mode stage, we are ready to deploy our app and the following features are now in effect:

* Assertions are disabled
* Debugging information is stripped out
* Debugging is disabled
* Compilation is optimized for fast startup, fast execution, and small package sizes
* Service extensions are disabled

#### Profile Mode

In profile mode, the ability to debug is maintained - enough to profile your app's performance. Emulator and simulator is disabled in Profile Mode. On mobile, profile mode is similar to release mode, with the following differences:

* Some service extensions, such as the one that enables the performance overlay, are enabled
* Tracing is enabled, and tools for supporting source-level debugging (such as DevTools) can connect to the process.

### Learning the Basics of Flutter

[Intro to widgets](https://docs.flutter.dev/development/ui/widgets-intro)

According to the Flutter's documentation, the central idea of the widgets page is to be able to build your UI out of widgets. Widgets describe what their view should look like given their current configuration and state. When a widget's state changes, the widget rebuilds its description, which the framework diffs against the previous description in order to determine the minimal changes needed in the underlying render tree to transition from one state to the next.

----

## Following [FreeCodeCamp's Tutorial for Flutter Development](https://youtu.be/VPvVD8t02U8)

### Setting-up your Developer Account

* iOS - Different Dev Accounts (individual/company - liability)
* Google - Different Dev Accounts

#### Chapter 2 - Setup

* Flutter is a rich UI framework developed by Google
* Being able to write code that targets specific frameworks
* Dart is the language that powers Flutter
* DartPad allows us to write / test Dart Code right in the browser

#### UPDATE: Android SDK and the things needed to run emulations are now fixed

#### Chapter 3 - Dart Exploration

```[dart]
flutter create <your_repository_name>
```

Keywords:

[Keywords Dev Guide](https://dart.dev/guides/language/language-tour#keywords)

* Avoid using the keywords as identifiers. Keywords such as hide, async, on, sync are contextual keywords, which have meaning only in specific places. They're valid identifiers everywhere.

* Words such as set, required, part, deferred, dynamic, covariant, extension, external, as, abstract, operator, typedef, part, operator, required, mixin, library, late, interface, import, Function, static, implements. These keywords are valid identifiers in most places, but they can't be used as class or type names, or as import prefixes

* Words such as yield and await are limited reserved words related to asynchrony support. We can't use await or yield as an identifier in any function body marked with async, async*, or sync*

[Data Types](https://api.dart.dev/stable)

Constants - Compile-time vs Run-time

#### Dart Control statements and collections

```[dart]
// If - else condition statements in Flutter
void test() {
  final name = 'Foo';
  if (name == 'Foo') {
    print('Yes this is foo');
  } else if (name != 'Bar') {
    print('This value is not bar');
  } else {
    print('I don\'t what this is');
  }
}
```

#### Operators

```[dart]
// Exploring Operators - (+. -. /, *, ==)
void test() {
  var age = 20;
  final ageMinusOne = --age; // prefix operator
  final halfOfAge = age / 2;
  final doubleTheAge = age * 2;

  var name = 'Foo Bar Baz ';
  final nameTimes100 = name * 100;
  print(nameTimes100);

  print(halfOfAge);
  print(doubleTheAge);
  print(ageMinusOne);
}
```

#### Lists in Dart [Explore more in the dart.dev documentation]

```[dart]
void test() {
  var names = ['Foo', 'Bar', 'Baz'];
  var planets = ['Earth', 'Pluto', 'Venus'];
  final foo = names[2];
  final lengthOfList = names.length;
  planets.add('Jupiter'); // Adding elements to a Sequence container

  print(names.length);
  print(planets.length);
  print(lengthOfList);
  print(foo);
}
```

#### Sets in Dart

```[dart]
void setTest() {
  var dessert = {'Chocolate', 'Cheesecake'};
  const burger = {'Bacon cheeseburger'};
  const things = {'foo', 1};
  dessert.add('Ice cream');
  dessert.add('Cheesecake');
  burger.add('Bacon cheeseburger');

  // print(burger);
  // print(dessert);
  // print(things);
}
```

#### Maps in Dart - [Explore the dart.dev documentation]

Same as dictionary data mapping structure to hold key-value pairs of information

```[dart]
// Maps in Dart
void test() {
  const person = {
    'age': 20,
    'name': 'foo',
  };
  print(person);
  person['name'] = 'FOOOOO';
  print(person);
  person['lastname'] = 'BazBaz';
  print(person);
}
```

#### [Sound Null-safety in Dart](https://dart.dev/null-safety)

In the previous Dart codebases (Dart v.2.0 and below), Dart developers still need to write code from scratch in order to Write dart code that are null safe.

##### Making any type nullable

Using the question mark after the data type such as "String?"

```[dart]
void testNull() {
  String? fullName =
      null; // the '?' signifies that a certain variable can contain null values
  String? lastName =
      null; // '?' signifies that the variable signifies that it is nullable
  lastName = 'Reyes';
  fullName = 'Clarence Vinzcent Reyes';

  // This indicate that the list doesn't expect to have a null value inside of your list
  List<String>? names = ['Foo', 'Bar', null];

  // This indicate that the list is expecting an "Optional" nullable data type
  List<String?>? nullableNames = ['Clarence', 'Samantha', 'Camill', null];
  nullableNames = null;
}
```

#### Cherry-picking non-null values

Using the ?? operator

```[dart]
void testNonNull() {
  const String? firstBasket = null;
  const String? secondBasket = null;
  const String? thirdBasket = 'Baz';

  if (firstBasket != null) {
    print("first basket is the first non-null value");
  } else if (secondBasket != null) {
    print("second basket is the first non-null value");
  } else if (thirdBasket != null) {
    print("third basket is the first non-null value");
  } else {
    print("all baskets found to be empty!");
  }

  // '??' infix operators ---> Indicating to check if the left value is 'null',
  // then I will be picking the value on the right side.
  const firstNonNullValue = firstBasket ?? secondBasket ?? thirdBasket;
}
```

In using the '??' operator, it searches for any non-nullable variable to its right and if it sees that their is a nullable type to its left, then it would go access the non-null right-hand variable type

#### Null-aware assignment operator

Using ??= in which it checks and resolve to see if a certain variable is null

```[dart]
void testNullAware(
    String? firstOrder, String? secondOrder, String? thirdOrder) {
  String? name = firstOrder;
  name ??= secondOrder;
  name ??= thirdOrder;

  print(name);
}
```

#### Conditional Invocation

Using ?. that makes the variables aware that it can accept null values

```[dart]
void conditionalInvocation(List<String>? names) {
  // List<String>? names = null;

  // Old way of checking if the instantiated variable is null in order to proceed
  // to processing the next stage of the program.
  // final int length;
  // if (names != null) {
  //   final length = names.length; // type promotion
  // } else {
  //   length = 0;
  // }

  // New way ---> Checks if the variable passed is not null or doesn't contain
  // any null values, then we access its length, otherwise we access the next non-
  // null value.
  final length = names?.length ?? 0;
  // conditionally invocating if we are adding a null value then we still add that to our data container/collection
  names?.add('Chicken');
  print(length);
  print(names);
}
```

#### Reading Assignment ---> Understanding more about [null-safety in dart](https://dart.dev/null-safety/understanding-null-safety)

### [TBC] Chapter 6 - OOP, Dart Enumerations, Functions
