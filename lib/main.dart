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

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.teal,
          title: const Text('WhatsApp'),
          bottom: TabBar(controller: tabController, tabs: [
            Tab(
              icon: Icon(Icons.camera_alt_rounded),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            ),
          ]),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Center(
              child: Text('Camera'),
            ),
            Center(
              child: Text('Chats'),
            ),
            Center(
              child: Text('Status'),
            ),
            Center(
              child: Text('Calls'),
            ),
          ],
        ));
  }
}
