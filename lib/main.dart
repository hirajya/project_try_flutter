import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(
        currentIndex: currentIndex,
        onButtonPressed: () {
          setState(() {
            buttonName = 'Clicked';
          });
        },
        onBottomNavBarTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  final int currentIndex;
  final VoidCallback onButtonPressed;
  final ValueChanged<int> onBottomNavBarTap;

  const FirstPage({
    required this.currentIndex,
    required this.onButtonPressed,
    required this.onBottomNavBarTap,
    Key? key,
  }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool showImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'App Title',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: widget.currentIndex == 0
            ? showImage
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        showImage = false;
                      });
                    },
                    child: Image.asset('images/sadpepe.jpg'),
                  )
                : Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                          ),
                          onPressed: widget.onButtonPressed,
                          child: Text('Click'),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            widget.onButtonPressed();
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return const SecondPage();
                              }),
                            );
                          },
                          child: Text('Click'),
                        ),
                      ],
                    ),
                  )
            : GestureDetector(
                onTap: () {
                  setState(() {
                    showImage = !showImage;
                  });
                },
                child: showImage
                    ? Image.asset('images/sadpepe.jpg')
                    : Image.asset('images/whatcat.png'),
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: widget.currentIndex,
        onTap: widget.onBottomNavBarTap,
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text('Second Page'),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
    );
  }
}
