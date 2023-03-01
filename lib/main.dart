import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      title: const Text('Hello Guys'),
                      content: const Text('Lorem ipsum dolo si amet'),
                      actions: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Okay'))
                      ],
                    )
                // Dialog(
                //   child: Text('Dialog Senja'),
                // ),
                );
          },
          child: Text('Klik Here'),
        ),
      ),
    );
  }
}
