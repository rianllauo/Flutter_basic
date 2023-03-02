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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.teal,
        title: const Text('Drawer'),
      ),
      body: Center(),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              padding: EdgeInsets.all(20),
              color: Colors.teal[300],
              alignment: Alignment.bottomLeft,
              child: Text(
                'Rian Kristian',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_right_rounded),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
