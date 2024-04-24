// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class OnBoarding3Screen extends StatelessWidget {
  OnBoarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 64, 141, 159),
      body: Column(
        children: [
          SizedBox(
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/log1.jpg'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
