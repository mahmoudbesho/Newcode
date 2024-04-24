// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_label, dead_code, non_constant_identifier_names, avoid_types_as_parameter_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/widget/colors.dart';
import 'package:flutter_application_1/shared/widget/text.dart';

class setting extends StatefulWidget {
  setting({super.key});

  @override
  State<setting> createState() => _prodctState();
}

class _prodctState extends State<setting> {
  bool valNotify1 = true;

  bool valNotify2 = false;

  bool valNotify3 = false;

  onChangFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  onChangFunction3(bool newValue3) {
    setState(() {
      valNotify3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: teal,
        title: Text('Sitting', style: TextStyle(fontSize: 22)),
       
      ),
      body: Container(
        child: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: [
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: blue,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Acount',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Divider(thickness: 1, height: 20),
                  SizedBox(height: 25),
                  buildAcountOption(context, "Chang Password"),
                  buildAcountOption(context, "Content Siting"),
                  buildAcountOption(context, "Social"),
                  buildAcountOption(context, "language"),
                  buildAcountOption(context, "privacy and Security"),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Icon(
                        Icons.volume_up_outlined,
                        color: blue,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Notification',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    height: 20,
                  ),
                  SizedBox(height: 10),
                  buildNotificationOption(
                    "The Dark",
                    bool,
                    valNotify1,
                    Function,
                    onChangFunction1,
                  ),
                  buildNotificationOption(
                    "Acount Active",
                    bool,
                    valNotify2,
                    Function,
                    onChangFunction2,
                  ),
                  buildNotificationOption(
                    "Opporyunity",
                    bool,
                    valNotify3,
                    Function,
                    onChangFunction3,
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      onPressed: () {},
                      child: Text(
                        "SIGN OUT",
                        style: mahmoud,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Padding buildNotificationOption(
      String titile, bool, value, Function, OptionalMethod) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(titile,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              )),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: blue,
              trackColor: grey,
              value: value,
              onChanged: (newValue) {
                OptionalMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAcountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog<void>(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                title,
                style: TextStyle(color: blue),
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('This is '),
                    Text('Would '),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Close'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w500, color: grey),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: grey,
            )
          ],
        ),
      ),
    );
  }
}
