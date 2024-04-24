// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, prefer_const_literals_to_create_immutables, must_be_immutable, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

import '../providers/convex_bar.dart';
import '../shared/widget/action_botton.dart';
import '../shared/widget/colors.dart';
import '../shared/widget/navigation.dart';
import '../shared/widget/text.dart';
import 'mainly.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  var email = TextEditingController();

  var password = TextEditingController();

  var formkey = GlobalKey<FormState>();

  var passwordNode = FocusNode();

  var emailNode = FocusNode();

  bool isHidden = true;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          backgroundColor: navy,
          appBar: AppBar(
            title: Text(
              "Search",
              style: h5Bold,
            ),
            backgroundColor: darkorange,
            actions: [
              IconButton(
                  onPressed: () {
                    goTo(
                      context: context,
                      screen: MainScreen(),
                    );
                  },
                  icon: Icon(Icons.outbond_sharp))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).requestFocus(passwordNode);
                    },
                    focusNode: FocusNode(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Search cant be empty";
                      }
                      return null;
                    },
                    controller: email,
                    cursorColor: white,
                    keyboardType: TextInputType.emailAddress,
                    style: titl1,
                    decoration: InputDecoration(
                      label: Text(
                        'Search',
                        style: titl1.merge(
                          TextStyle(color: grey),
                        ),
                      ),
                      hintStyle: TextStyle(color: black),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: grey, width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: white,
                          width: 2,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: lightred, width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: lightred,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ActionBotton(
                    bottonheight: 55,
                    BottonColor: darkorange,
                    bottonWidth: 122,
                    titlestyle: mhmoud,
                    title: 'Search ',
                    action: () {
                      if (formkey.currentState!.validate()) {
                        goTo(context: context, screen: MainScreen());
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: convex_bar(),
        ),
      );
}
