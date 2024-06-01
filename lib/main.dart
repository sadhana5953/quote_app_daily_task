import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
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


// todo OX game

// import 'dart:ffi';
// import 'dart:io';

// void user1() {
//   stdout.write("User X : ");
//   x = int.parse(stdin.readLineSync()!);

//   for (int i = 0; i < 9; i++) {
//     if (a[i] == x) {
//       a[i] = 'X';
//     }
//   }

//   print('${a[0]} | ${a[1]} | ${a[2]}\n');
//   print('_ _ _ _ _ _ \n');
//   print('${a[3]} | ${a[4]} | ${a[5]}\n');
//   print('_ _ _ _ _ _ \n');
//   print('${a[6]} | ${a[7]} | ${a[8]}\n');

//   if (a[0] == 'X' && a[3] == 'X' && a[6] == 'X') {
//     print("User X wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[1] == 'X' && a[4] == 'X' && a[7] == 'X') {
//     print("User X wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[2] == 'X' && a[5] == 'X' && a[8] == 'X') {
//     print("User X wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[0] == 'X' && a[1] == 'X' && a[2] == 'X') {
//     print("User X wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[3] == 'X' && a[4] == 'X' && a[5] == 'X') {
//     print("User X wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[6] == 'X' && a[7] == 'X' && a[8] == 'X') {
//     print("User X wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[0] == 'X' && a[4] == 'X' && a[8] == 'X') {
//     print("User X wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[2] == 'X' && a[4] == 'X' && a[6] == 'X') {
//     print("User X wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else {
//     int ch = 0;
//     for (int i = 0; i < 9; i++) {
//       if (a[i] == i + 1) {
//         ch++;
//       }
//     }
//     if (ch > 0) {
//       user2();
//     } else {
//       print('game is tie');
//     }
//   }
// }

// void user2() {
//   stdout.write("User O : ");
//   x = int.parse(stdin.readLineSync()!);

//   for (int i = 0; i < 9; i++) {
//     if (a[i] == x) {
//       a[i] = 'O';
//     }
//   }

//   print('${a[0]} | ${a[1]} | ${a[2]}\n');
//   print('_ _ _ _ _ _ \n');
//   print('${a[3]} | ${a[4]} | ${a[5]}\n');
//   print('_ _ _ _ _ _ \n');
//   print('${a[6]} | ${a[7]} | ${a[8]}\n');

//   if (a[0] == 'O' && a[3] == 'O' && a[6] == 'O') {
//     print("User O wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[1] == 'O' && a[4] == 'O' && a[7] == 'O') {
//     print("User O wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[2] == 'O' && a[5] == 'O' && a[8] == 'O') {
//     print("User O wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[0] == 'O' && a[1] == 'O' && a[2] == 'O') {
//     print("User O wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[3] == 'O' && a[4] == 'O' && a[5] == 'O') {
//     print("User O wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[6] == 'O' && a[7] == 'O' && a[8] == 'O') {
//     print("User O wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[0] == 'O' && a[4] == 'O' && a[8] == 'O') {
//     print("User O wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else if (a[2] == 'O' && a[4] == 'O' && a[6] == 'O') {
//     print("User O wins");
//     for (int i = 0; i < 1; i++) {
//       break;
//     }
//   } else {
//     int ch = 0;
//     for (int i = 0; i < 9; i++) {
//       if (a[i] == i + 1) {
//         ch++;
//       }
//     }
//     if (ch > 0) {
//       user1();
//     } else {
//       print('game is tie');
//     }
//   }
// }

// List a = [1, 2, 3, 4, 5, 6, 7, 8, 9];
// int x = 0;
// void main() {
//   print('${a[0]} | ${a[1]} | ${a[2]}\n');
//   print('_ _ _ _ _ _ \n');
//   print('${a[3]} | ${a[4]} | ${a[5]}\n');
//   print('_ _ _ _ _ _ \n');
//   print('${a[6]} | ${a[7]} | ${a[8]}\n');

//   print('Enter number:');
//   user1();
// }
