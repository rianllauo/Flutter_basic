import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Hello World!',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
