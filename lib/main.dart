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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? indexTab;

  late List showWidget = [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Cart'),
    ),
    Center(
      child: Text('User'),
    ),
  ];

  @override
  void initState() {
    indexTab = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.blue,
          title: const Text('Bottom Navigation Bar'),
        ),
        body: showWidget[indexTab!],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexTab!,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          onTap: (value) => setState(() {
            indexTab = value;
          }),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
          ],
        ));
  }
}
