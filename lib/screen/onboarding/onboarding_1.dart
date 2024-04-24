// ignore_for_file: curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../shared/widget/action_botton.dart';
import '../../shared/widget/colors.dart';
import '../../shared/widget/navigation.dart';
import '../../shared/widget/text.dart';
import '../login/languag.dart';


class OnBoarding1Screen extends StatelessWidget {
  const OnBoarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(79, 79, 3, 1),
                    Color.fromRGBO(27, 52, 110, 1),
                  ],
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter),
            ),
          ),
          Scaffold(
            backgroundColor: trnsparent,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(55),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pom.jpg'),
                      radius: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'النفايات الالكترونيه',
                      style: mhmoud.merge(TextStyle(fontSize: 25, color: navy)),
                    ),
                    SizedBox(
                      height: 235,
                    ),
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
        ],
      ),
    );
  }
}
