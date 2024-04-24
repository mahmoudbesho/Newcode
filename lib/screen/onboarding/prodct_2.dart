// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/mainly.dart';
import 'package:flutter_application_1/shared/widget/colors.dart';




// ignore: camel_case_types
class prodct_2 extends StatelessWidget {
  prodct_2({super.key});

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
          SizedBox(
            height: 15,
          ),
          Center(
            child: Image(
              width: double.infinity,
              image: AssetImage('assets/images/log15.jpg'),
            ),
          ),
        ],
      ),

    );
  }
}
