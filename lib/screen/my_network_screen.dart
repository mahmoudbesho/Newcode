import 'package:flutter/material.dart';

class MyNetworkScreen extends StatelessWidget {
  const MyNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(child: Text('+'),
        onPressed: () {},
      ),
      body: Center(
        child: Text('MyNetworScreen'),
      ),
    );
  }
}
