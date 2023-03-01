import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Layouting'),
          ),
          body: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Color(0xFFFFC107),
                    child: Center(child: Text('Kuning')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Center(child: Text('blue')),
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.green,
                    child: Center(child: Text('hijau')),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                    child: Center(child: Text('hijau')),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.indigo,
                    child: Center(child: Text('hijau')),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
