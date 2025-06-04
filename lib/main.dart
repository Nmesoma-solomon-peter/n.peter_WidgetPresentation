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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'My Stack + Container Home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    return Scaffold(
      // Appbar : is the the widget that we see on the topmost part of the scene
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // the stack widget allow us to position a container on top of the other.  just like a stack of plates, here we will be placing a container on top of a  CircleAvatar
          child: Stack(
            children: [
              // The circle Avatar helps us create a rounded profile like image structure
              CircleAvatar(radius: 50, backgroundImage: NetworkImage("https://africaleadership.net/wp-content/uploads/2016/07/Frederick.jpg")),
              // the positioned widget helps us define where we want our container to be here we want it to be at the top right position
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  // I have used the padding attribute to add a padding of 5px to all sides of the container
                  padding: EdgeInsets.all(5),
                  // Adding a green background color to the container using the decoration attribute and the BoxDecoration WIDGET
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  // our container text with a with text color for visibility.
                  child: Text("5", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          )
      ),
    );
  }
}
