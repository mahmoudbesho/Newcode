import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
       floatingActionButton: FloatingActionButton(child: Text('+'),
        onPressed: () {},
      ),
      body: Center(
        child: Text('the app'),
      ),
    );
  }
}