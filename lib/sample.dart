import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Home'),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child: Text(
            '$count',
            style: const TextStyle(fontSize: 60),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ]),

        drawer: const Drawer(child: Text('Yo!')),

        // body: ListView(
        //   scrollDirection: Axis.horizontal,
        //   addAutomaticKeepAlives: false,
        //   children: [
        //     Container(
        //       width: 400,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: 400,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       width: 400,
        //       color: Colors.green,
        //     ),
        //   ]
        //   )
      ),
    );
  }
}
