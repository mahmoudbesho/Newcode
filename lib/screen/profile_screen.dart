// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, camel_case_types, avoid_unnecessary_containers, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/screen/mainly.dart';
import 'package:flutter_application_1/shared/widget/colors.dart';
import 'package:flutter_application_1/shared/widget/navigation.dart';

import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

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
                    Color.fromRGBO(54, 237, 118, 1),
                    Color.fromRGBO(19, 166, 164, 1),
                    Color.fromRGBO(174, 179, 176, 1),
                  ],
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter),
            ),
          ),
          Scaffold(
            backgroundColor: trnsparent,
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.arrowLeft,
                          ),
                          color: white,
                          onPressed: () {
                            goTo(context: context, screen: MainScreen());
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'My Profile',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: white,
                        fontSize: 36,
                        fontFamily: AutofillHints.gender,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my.jpg'),
                      radius: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Mahmoud Shreef',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Mahmoud@gamil.com',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.delete,
                            size: 28,
                          ),
                          onPressed: () {
                            // اضف الاوامر الخاصة بالضغط على زر حذف الحساب هنا
                          },
                          color: Color.fromARGB(255, 85, 15, 1),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.logout,
                            size: 25,
                          ),
                          onPressed: () {
                            // اضف الاوامر الخاصة بالضغط على زر تسجيل الخروج هنا
                          },
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 52,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.google,
                          ),
                          color: Color.fromARGB(255, 206, 137, 46),
                          iconSize: 55,
                          onPressed: () {
                            launchUrl(
                              Uri.parse(
                                  'https://mail.google.com/mail/u/0/#inbox'),
                            );
                          },
                        ),
                        SizedBox(
                          width: 33,
                        ),
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                          ),
                          color: Color.fromARGB(255, 55, 59, 88),
                          iconSize: 55,
                          onPressed: () {
                            launchUrl(
                              Uri.parse('https://www.facebook.com/'),
                            );
                          },
                        ),
                        SizedBox(
                          width: 33,
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.linkedin),
                          color: Color.fromARGB(248, 4, 41, 111),
                          iconSize: 55,
                          onPressed: () {
                            launchUrl(
                                Uri.parse('https://www.linkedin.com/feed/'));
                          },
                        ),
                      ],
                    ),
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
