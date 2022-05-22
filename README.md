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

### [Understanding Null Safety](https://dart.dev/null-safety/understanding-null-safety)

* Further reading resources with regards to Dart's Type System:

1. [Sound Static Type System](https://dart.dev/null-safety/understanding-null-safety)

This has been plaguing many programmers in which Kotlin, Swift, Rust and other languages all have their own answers to what has become a wide problem.

```[dart]
// Without Null safety:
bool isEmpty(String string) => string.length == 0;

main() {
  isEmpty(null);
}
```

When the above code is being compiled without null safety, it throws a *NoSuchMethodError* exception on the call to *.length*. The null value is an instance of the *Null* class, and *Null* has no "length" getter. Runtime failures suck!

In Dart, there are a various ways a language can tackle null reference errors each have their pros and cons. These following principles guided the choices we made.

1. *Code should be safe by default*
2. *Null Safe code should be easy to write*
3. *The resulting null safe code should be fully sound*

One caveat: We only guarantee soundness in Dart programs that are fully null safe.

In the context of having 'NULL' values, there's nothing wrong with it. On the contrary, it's really useful to be able to represent the absence of a value. Building support for a special "absent" value directly into the language makes working with absence flexible and usable. It underpins optional parameters, the handy '?.' null-aware operator, and default initialization. It is not *null* that is bad, it is having *null* go where you don't expect it that causes problems.

#### Nullability in the Type System

* In the dart compiler, before Null safety comes into play, the static type system allowed the value *null* to flow into expressions of any of those types. In type theory lingo, the *Null* type was treated as a subtype of all types:

* If the type is *List*, you can call *.add()* or *[]* on it. If it's *int*, we can call *+*. But the *null* value doesn't define any of those methods. Allowing *null* to flow into an expression of some other type means any of those operations can fail. This is really the crux of null reference errors - every failure comes from trying to look up a method or property on *null* that it doesn't have.

#### Non-nullable and nullable types

According to the Google's documentation of *Dart*, Null safety eliminates that problem at the root by changing the type hierarchy. The *Null* type still exists, but it's no longer a subtype of all types. Instead, the type hierarchy is being removed away from Dart's objects

Since *Null* is no longer a subtype, no type except the special *Null* class permits tha value *null*. We've made all types __non-nullable__ by __default__.

```[dart]
// Using Null safety:
makeCoffee(String coffee, [String? dairy]) {
  if (dairy != null) {
    print('$coffee with $dairy');
  } else {
    print('Black $coffee');
  }
}
```

In the above code, we want to allow the *dairy* parameter to accept any string, or the value null, but nothing else. To express that, we give *dairy* a __nullable type__ by slapping it with '?' at the end of the underlying base type *String*. Under the hood, it is essentially defining a *union* of the underlying type and the *Null* type. So *String?* would be a shorthand for *String|Null* if Dart had full-featured union types.

#### Using nullable types

If we have expression with a nullable type, what can we with the result? Since our principle is safe by default, the answer is not much. This won't let us call methods of the underlying type on it because those might fail if the value is *null*:

The only methods and properties we can safely access are ones defined by both the underlying type and the *Null* class. That's just *toString()*, *==*, and *hashCode*. We can still use nullable types as map keys, store them in sets, compare them to other values, and use them in string interpolation, but that's about it.

It's always safe to pass a non-nullable type to something expecting a nullable type. If a function accepts *String?* then passing a *String* is allowed because it won't cause any problems. We model it by making every nullable type a supertype of its underlying type. We can also pass *null* to something expecting a nullable type, so *Null* is also a subtype of every nullable type.

```[dart]
// Another hypothetical unsound null safety:
requireStringNotNull(String definitelyString) {
  print(definitelyString.length);
}

// Without null safety : Implicit Downcasts
requireStringNotObject(String definitelyString) {
  print(definitelyString.length);
}

main () {
  
    // String? maybeString = null; // Or not!
    requireStringNotNull(maybeString); // The function call here is not safe

    // The code block below indicates that the compiler silently inserts an "as String" cast on the argument to "requireStringNotObject()"
    // With null safety, we are removing implicit downcasts entirely!!
    Object maybeAnotherString = 'it is';
    requireStringNotObject(maybeAnotherString);
    requireStringNotObject(maybeAnotherString as String);
}
```

Another code example below illustrates what would happen if there would be no implicit downcasting.

```[dart]
// Another example of without null safety:
List<int> filterEvens(List<int> ints) {
  return ints.where((n) => n.isEven);
}
```

Eventhough the code above compiles, it would still throw an exception at runtime when it tries to cast that *Iterable* to the *List* type that *filterEvens* declares it returns. To avoid an exception being thrown, we must be able to downcast implicitly by stating what variable type we would downcast

```[dart]
// With Implicit downcasts
List<int> filterEvens(List<int> ints) {
  return ints.where((n) => n.isEven) as List<int>;
}
```

#### Top and Bottom

Since *Object* is non-nullable now, it is now longer a top type. *Null* is not a subtype of it. Dart has no named top type. If you need a top type, you want *Object?*. Likewise, *Null* is no longer the bottom type. If it was, everything would still be nullable. Instead, we've added a new bottom type named *Never*.

In practice, this means:

* If we want to indicate that we allow a value of any type, we use *Object?* instead of *Object*. In fact, it becomes pretty unusual to use *Object* since that type means "could be any possible value except this one weirdly prohibited value *null*".
* On the rare occasion that you need a bottom type, use *Never* instead of *Null*. If we don't know if we need a bottom type, we probably don't need it.

#### Ensuring Correctness

Getting rid of implicit downcasts and removing *Null* as a bottom type covers all of the main places that types flow through a program across assignments and from arguments into parameters on function calls.

##### Invalid Returns

In sound non-nullable types, we must make sure that we must return a specific data type in which the compiler would throw an error if a function with a non-nullable return type doesnt reliably return a value.

##### Uninitialized Variables

If we don't give the variable an explicit initializer, Dart default initializes the variable with *null*. We have also to tighten things up for non-nullabel variables:

* *Top level variable and static field declarations must have an initializer* - The only safe option is to require the declaration itself to have an initializing expression that produces a value of the right type.

```[dart]
// Using null safety
int topLevel = 0;

class SomeClass {
  static int staticField = 0;
}
```

* *Instance fields must either have an initializer at the declaration, using an initializing format, or be initialized in the constructor's initialization list.* - In other words, as long as the field has a value before you reach the constructor body, you're good.

```[dart]
// Using null safety
class SomeClass {
  int atDeclaration = 0;
  int initializingFormal;
  int initializationList;

  SomeClass(this.initializingFormal)
  : initialization list = 0;
}
```

* A non-nullable local variable doesn't need to have an initializer - *a local variable must be definitely assigned before it is used.*

```[dart]
// Using null safety:
int tracingFibonacci(int n) {
  int result;
  if (n < 2) {
    result = n;
  } else {
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }

  print(result);
  return result;
}
```

* *Optional Parameters must have a default value*

#### Flow Analysis

In Dart, control flow analysis makes it visible in which Dart has a dash of flow analysis in the form of __type promotion__.

```[dart]
// With (or without) null safety:
bool isEmptyList(Object object) {
  if (object is List) {
    return object.isEmpty; // <--- OK
  } else {
    return false;
  }
}
```

#### Reachability Analysis

```[dart]
bool isEmptyList(Object object) {
  if (object is! List) return False;
  return object.isEmpty;
}
```

#### [TBC] Never for unreachable code

### [TBC] Chapter 6 - OOP, Dart Enumerations, Functions
