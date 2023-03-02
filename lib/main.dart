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
        backgroundColor: Colors.blue,
        title: const Text('Bottom Navigation Bar'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isDismissible: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 250,
                      padding: EdgeInsets.only(top: 20),
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Icon(Icons.home),
                            title: Text('Home'),
                          ),
                          ListTile(
                            leading: Icon(Icons.shop),
                            title: Text('Shop'),
                          ),
                          ListTile(
                            leading: Icon(Icons.shopping_bag),
                            title: Text('Cart'),
                          ),
                          ListTile(
                            leading: Icon(Icons.cancel),
                            title: Text('Cancle'),
                            onTap: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text('Show Button Sheet')),
        ),
      ),
    );
  }
}
