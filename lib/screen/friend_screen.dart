// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/mainly.dart';
import 'package:flutter_application_1/shared/widget/colors.dart';
import 'package:flutter_application_1/shared/widget/navigation.dart';
import 'package:flutter_application_1/shared/widget/text.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navy,
      appBar: AppBar(
        backgroundColor: darkorange,
        leading: IconButton(
            color: black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              goTo(context: context, screen: MainScreen());
            }),
        title: Text(
          'friendscreen',
          style: mhmoud,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.magnifyingGlass),
        ),
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my1.jpg'),
                      radius: 38.5),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mahmoud', style: titl1),
                      Text('+0102615565',
                          style: titl1.merge(TextStyle(color: grey))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my2.jpg'),
                      radius: 38.5),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mahmoud', style: titl1),
                      Text('+0102615565',
                          style: titl1.merge(TextStyle(color: grey))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my3.jpg'),
                      radius: 38.5),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mahmoud', style: titl1),
                      Text('+0102615565',
                          style: titl1.merge(TextStyle(color: grey))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my4.jpg'),
                      radius: 38.5),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mahmoud', style: titl1),
                      Text('+0102615565',
                          style: titl1.merge(TextStyle(color: grey))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my5.jpg'),
                      radius: 38.5),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mahmoud', style: titl1),
                      Text('+0102615565',
                          style: titl1.merge(TextStyle(color: grey))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my6.jpg'),
                      radius: 38.5),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mahmoud', style: titl1),
                      Text('+0102615565',
                          style: titl1.merge(TextStyle(color: grey))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my6.jpg'),
                      radius: 38.5),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mahmoud', style: titl1),
                      Text('+0102615565',
                          style: titl1.merge(TextStyle(color: grey))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my1.jpg'),
                      radius: 38.5),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mahmoud', style: titl1),
                      Text('+0102615565',
                          style: titl1.merge(TextStyle(color: grey))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my3.jpg'),
                      radius: 38.5),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mahmoud', style: titl1),
                      Text('+0102615565',
                          style: titl1.merge(TextStyle(color: grey))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my4.jpg'),
                      radius: 38.5),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mahmoud', style: titl1),
                      Text('+0102615565',
                          style: titl1.merge(TextStyle(color: grey))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my5.jpg'),
                      radius: 38.5),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mahmoud', style: titl1),
                      Text('+0102615565',
                          style: titl1.merge(TextStyle(color: grey))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
