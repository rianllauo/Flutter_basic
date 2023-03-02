import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  Map<String, dynamic>? dataUser;

  void fetchUser() async {
    try {
      var response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/users/3"));
      var data = json.decode(response.body);

      setState(() {
        dataUser = data;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http Request'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(dataUser?['name'].toString() ?? 'Tidak ada data'),
            Text(dataUser?['email'].toString() ?? 'Tidak ada data'),
            Text(dataUser?['phone'].toString() ?? 'Tidak ada data'),
            ElevatedButton(
              onPressed: () {
                fetchUser();
              },
              child: Text('Get Data'),
            )
          ],
        ),
      ),
    );
  }
}
