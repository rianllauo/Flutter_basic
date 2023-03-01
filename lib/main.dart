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
  final List data = [
    {"judul": "Pilihan 1", "data": 1},
    {"judul": "Pilihan 2", "data": 2},
    {"judul": "Pilihan 3", "data": 3},
  ];

  int? dataAwal;

  @override
  void initState() {
    dataAwal = data[0]['data'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.teal,
          title: const Text('WhatsApp'),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: DropdownButton<int>(
              value: dataAwal,
              items: data
                  .map((e) => DropdownMenuItem(
                        child: Text("${e['judul']}"),
                        value: e['data'] as int,
                      ))
                  .toList(),
              onChanged: (value) => setState(() {
                dataAwal = value;
              }),
            ),
          ),
        ));
  }
}
