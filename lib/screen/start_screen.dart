// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/login/languag.dart';
import 'package:flutter_application_1/shared/widget/action_botton.dart';
import 'package:flutter_application_1/shared/widget/colors.dart';
import 'package:flutter_application_1/shared/widget/navigation.dart';
import 'package:flutter_application_1/shared/widget/text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(174, 179, 176, 1),
                    Color.fromRGBO(27, 110, 56, 1),
                  ],
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter),
            ),
          ),
          Scaffold(
            backgroundColor: trnsparent,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(60),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/pom.jpg'),
                        radius: 100,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'E Waste',
                        style: h2Bold,
                      ),
                      SizedBox(height: 245),
                      ActionBotton(
                        bottonheight: 40,
                        bottonWidth: 100,
                        BottonColor: navy,
                        title: 'Start',
                        titlestyle: mhmoud,
                        action: () {
                          goTo(context: context, screen: Language());
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
