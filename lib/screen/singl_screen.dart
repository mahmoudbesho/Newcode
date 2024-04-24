import 'package:flutter/material.dart';

class SinglScreen extends StatelessWidget {
  const SinglScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       floatingActionButton: FloatingActionButton(child: Text('+'),
        onPressed: () {},
      ),
      body: Center(
        child: Text('the app'),
      ),
    );
  }
}
