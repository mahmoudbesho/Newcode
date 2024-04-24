// import 'package:delta_progect/UserAccount.dart';

// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/setting.dart';
import 'package:flutter_application_1/screen/friend_screen.dart';
import 'package:flutter_application_1/screen/profile_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/shared/widget/colors.dart';
import 'package:flutter_application_1/shared/widget/navigation.dart';
import 'package:flutter_application_1/shared/widget/text.dart';

import 'onboarding/a1.dart';

import 'onboarding/prodct_2.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  Map<String, String> items = {
    'log6.jpg': '',
    'log7.jpg': '',
    'log9.jpg': '',
    'log5.jpg': '',
    'log1.jpg': '',
    'log4.jpg': '',
    'log3.jpg': '',
    'log2.jpg': '',
    'log11.jpg': '',
    'log8.jpg': '',
    'log12.jpg': '',
    'log13.jpg': '',
    'log15.jpg': '',
    'log10.jpg': '',
    'log16.jpg': '',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/my.jpg'),
            ),
            decoration: BoxDecoration(
              color: blue,
            ),
            accountName: Text('data'),
            accountEmail: Text("www.tanm.@gmailcom"),
          ),
          ListTile(
            title: Text('User'),
            leading: Icon(
              FontAwesomeIcons.user,
              color: green,
            ),
            onTap: () {
              goTo(context: context, screen: ProfileScreen());
            },
          ),
          ListTile(
            title: Text('Acount'),
            leading: Icon(
              Icons.verified_user,
              color: navy,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text('Add'),
            leading: Icon(Icons.my_library_add),
            onTap: () {},
          ),
          ListTile(
            title: Text('Setting'),
            leading: Icon(
              FontAwesomeIcons.gear,
              color: darkorange,
            ),
            onTap: () {
              goTo(context: context, screen: setting());
            },
          ),
        ],
      )),
      appBar: AppBar(
        title: Text(
          'الصفحه الرئسيه',
          style: mhmoud,
        ),
        backgroundColor: darkorange,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => prodct_2()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              goTo(context: context, screen: ProfileScreen());
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              goTo(context: context, screen: FriendScreen());
            },
          ),
        ],
      ),

      backgroundColor: Color.fromARGB(255, 7, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (mycontext, index) {
                  return ItemsIcon(
                    items: items.keys.toList()[index],
                    itemsdialog: items.values.toList()[index],
                  );
                },
                shrinkWrap: true,
                padding: EdgeInsets.all(8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
