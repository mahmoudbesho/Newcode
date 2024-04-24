// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/setting.dart';
import 'package:flutter_application_1/shared/widget/colors.dart';
import 'package:flutter_application_1/shared/widget/navigation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Drawer extends StatelessWidget {
  const Drawer(Column column, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Drawer(
        Column(
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
              title: Text('data'),
              leading: Icon(
                FontAwesomeIcons.user,
                color: green,
              ),
              onTap: () {},
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
              title: Text('user'),
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
        ),
      ),
    );
  }
}
