import 'package:flutter/material.dart';

void main() {
  // var name = 'Clarence';
  // final name = 'Foo';
  runApp(const MyApp());
}

// Variable Declartion by using const
// const age = 28;
// Compile-time constants ---> values that cannot change the time by the time
// you declare your values.
// const twiceTheAge = age * 2;

// String getFullName(String firstName, String lastName) {
//   return '$firstName $lastName'; // formatting strings by using the '$' indicator
// }

// Another shorthand way to create functions.
// String getFullName2(String fullName) => '$fullName';

// String printMyName() {
//   return '';
// }

// Exploring Operators - (+. -. /, *, ==)
// void test() {
//   var age = 20;
//   final ageMinusOne = --age; // prefix operator
//   final halfOfAge = age / 2;
//   final doubleTheAge = age * 2;

//   var name = 'Foo Bar Baz ';
//   final nameTimes100 = name * 100;
//   print(nameTimes100);

//   print(halfOfAge);
//   print(doubleTheAge);
//   print(ageMinusOne);
// }

// Lists in Dart
// void test() {
//   var names = ['Foo', 'Bar', 'Baz'];
//   var planets = ['Earth', 'Pluto', 'Venus'];
//   final foo = names[2];
//   final lengthOfList = names.length;
//   planets.add('Jupiter'); // Adding elements to a Sequence container

//   print(names.length);
//   print(planets.length);
//   print(lengthOfList);
//   print(foo);
// }

// Sets in Dart
// void setTest() {
//   var dessert = {'Chocolate', 'Cheesecake'};
//   const burger = {'Bacon cheeseburger'};
//   const things = {'foo', 1};
//   dessert.add('Ice cream');
//   dessert.add('Cheesecake');
//   burger.add('Bacon cheeseburger');

//   // print(burger);
//   // print(dessert);
//   // print(things);
// }

// Maps in Dart
void test() {
  var person = {
    'age': 20,
    'name': 'foo',
  };

  print(person);
  person['name'] = 'FOOOOO';
  print(person);
  person['lastname'] = 'BazBaz';
  print(person);
}

// If - else condition statements in Flutter
// void test() {
//   final name = 'Foo';
//   if (name == 'Foo') {
//     print('Yes this is foo');
//   } else if (name != 'Bar') {
//     print('This value is not bar');
//   } else {
//     print('I don\'t what this is');
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    test(); // Invoking our function to present to our debug console
    // print(getFullName('Clarence', 'Reyes'));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
