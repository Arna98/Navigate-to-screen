import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigate to new screen',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Icon(Icons.arrow_back),
      title: const Text("Home"),
      centerTitle: true,
      actions: const [
        Icon(Icons.notifications),
        Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 15, 0),
          child: Icon(Icons.search),
        )
      ],
      elevation: 1,
      backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}