import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  final String email;

  const home_page({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Text(
          'Email: $email',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
