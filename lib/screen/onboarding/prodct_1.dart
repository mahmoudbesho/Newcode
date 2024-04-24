// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/widget/colors.dart';


import '../mainly.dart';

// ignore: camel_case_types
class prodct_1 extends StatelessWidget {
  prodct_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navy,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainScreen(),
                  ));
            },
          )
        ],
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/images/log6.jpg'),
            color: trnsparent,
          ),
        ],
      ),
    );
  }
}
