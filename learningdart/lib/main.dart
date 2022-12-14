import 'package:flutter/material.dart';

// String getFullName(String firstName, String lastName) {
//   return '$firstName $lastName';
// }

// String returnSomething(String something) =>
//     '$something'; //this => sign shows that it is returning something from the function

void main() {
  // print(getFullName("Farhan", "Tahmid"));
  // print(returnSomething("Returned from something"));
  test();
  runApp(const MyApp());
}

void test() {
  //****DART CONTROL STATEMENT*** */
  // final name = "Foo";
  // if (name == "Foo") {
  //   print("Yes this is foo");
  // } else {
  //   print("This is not foo");
  // }

  //****DART LIST DATA TYPES*** */

  // var names = ['fiza', 'farhan','farnaz'];
  // names.add('farnaz');
  // for (int i = 0; i < names.length; i++) {
  //   print(names[i]);
  // }

  //***DART SET DATA TYPE */
  // var names = {'foo', 'bar', 'baz'};
  // names.add('bar');
  // print(names);

  //***DART MAP/Dictionary */
  // var person = {'age': 20, 'name': 'farhan'};
  // print(person['name']);
  // person['name'] = 'fiza';
  // print(person);

  /***DURT NULL SAFETY */
  // String? name =
  //     null; //by using '?' you can tell dart that this is a nullable data type.
  // print(name);
  // name = 'farhan';
  // print(name);

  // List<String?>? names = [
  //   'fiza',
  //   'farhan',
  //   null
  // ]; //this tells dart that the data inside the list can be null but also if the data type is string, that can be null too.
  // print(names);

  // const String? firstName = null;
  // const String? middleName=null;
  // const String? lastName = 'farnaz';

  // const firstNullValue = firstName ??
  //     middleName ??
  //     lastName; //this catches the first non null value and continues operation to the right
  // print(firstNullValue);

  //oop concept
  final person = Person("Farhan");
  person.run();
  person.breathe();
}

//DART OOP
class Person {
  String name='';
  Person(String name) {
    this.name = name;
    
  }

  void breathe() {
    print("${name} is breathing");
  }

  void run() {
    print("${name} is running");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
  const MyHomePage({super.key, required this.title});

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
