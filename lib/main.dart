import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/profile.dart';
import './pages/settings.dart';

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
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Home(),
                        ));
                      }),
                  ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Profile'),
                      trailing: Icon(Icons.arrow_right_rounded),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Profile(),
                        ));
                      }),
                  ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                      trailing: Icon(Icons.arrow_right_rounded),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Settings(),
                        ));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
