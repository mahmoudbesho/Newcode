// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, must_be_immutable, non_constant_identifier_names, unrelated_type_equality_checks, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/login/login.dart';
import 'package:flutter_application_1/screen/mainly.dart';
import 'package:flutter_application_1/shared/widget/action_botton.dart';
import 'package:flutter_application_1/shared/widget/colors.dart';
import 'package:flutter_application_1/shared/widget/navigation.dart';
import 'package:flutter_application_1/shared/widget/text.dart';

class signup extends StatelessWidget {
  signup({super.key});

  var email = TextEditingController();

  var password = TextEditingController();
  var re_password = TextEditingController();

  var formkey = GlobalKey<FormState>();

  var passwordNode = FocusNode();
  var re_passwordNode = FocusNode();

  var emailNode = FocusNode();

  bool isHidden = true;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          backgroundColor: white,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pom.jpg'),
                      radius: 56,
                      backgroundColor: trnsparent,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(passwordNode);
                      },
                      focusNode: FocusNode(),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email cant be empty";
                        }
                        return null;
                      },
                      controller: email,
                      cursorColor: black,
                      keyboardType: TextInputType.emailAddress,
                      style: mahmoud,
                      decoration: InputDecoration(
                        label: Text(
                          'Email',
                          style: titl1.merge(
                            TextStyle(color: black),
                          ),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.email,
                              color: green,
                            )),
                        hintStyle: TextStyle(color: black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: black, width: 3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: black,
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
                    SizedBox(height: 10),
                    StatefulBuilder(
                      builder: (context, setState) => TextFormField(
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(re_passwordNode);
                        },
                        focusNode: passwordNode,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "password cant be empty";
                          }
                          return null;
                        },
                        obscureText: isHidden,
                        controller: password,
                        cursorColor: black,
                        keyboardType: TextInputType.visiblePassword,
                        style: mahmoud,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                isHidden = !isHidden;
                                setState(() {});
                              },
                              icon: Icon(
                                isHidden == true
                                    ? Icons.remove_red_eye
                                    : Icons.remove_red_eye_outlined,
                                color: isHidden == true ? green : lightred,
                              )),
                          label: Text(
                            ' Password',
                            style: titl1.merge(
                              TextStyle(color: black),
                            ),
                          ),
                          hintStyle: TextStyle(color: black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: black, width: 3),
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: black,
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    StatefulBuilder(
                      builder: (context, setState) => TextFormField(
                        focusNode: re_passwordNode,
                        validator: (value) {
                          if (password.text.isEmpty) {
                            return "password cant be empty";
                          }
                          if (value != password.text)
                            return "password doesnt comfirm";
                          return null;
                        },
                        obscureText: isHidden,
                        controller: re_password,
                        cursorColor: black,
                        keyboardType: TextInputType.visiblePassword,
                        style: mahmoud,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                isHidden = !isHidden;
                                setState(() {});
                              },
                              icon: Icon(
                                isHidden == true
                                    ? Icons.remove_red_eye
                                    : Icons.remove_red_eye_outlined,
                                color: isHidden == true ? green : lightred,
                              )),
                          label: Text(
                            ' Comfirm Password',
                            style: titl1.merge(
                              TextStyle(color: black),
                            ),
                          ),
                          hintStyle: TextStyle(color: black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: black, width: 3),
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: black,
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ActionBotton(
                      bottonheight: 45,
                      BottonColor: green,
                      bottonWidth: double.infinity,
                      titlestyle: mhmoud,
                      title: 'Sign Up ',
                      action: () {
                        if (formkey.currentState!.validate()) {
                          goTo(context: context, screen: MainScreen());
                        }
                      },
                    ),
                    SizedBox(height: 25),
                    Text(
                      "or",
                      style: h4Bold.merge(
                        TextStyle(color: grey),
                      ),
                    ),
                    SizedBox(height: 25),
                    ActionBotton(
                        bottonheight: 45,
                        BottonColor: green,
                        bottonWidth: double.infinity,
                        titlestyle: mhmoud,
                        title: 'Sign Up with Google',
                        action: () {}),
                    SizedBox(
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {
                        goTo(context: context, screen: Login_11());
                      },
                      child: Text(
                        'I  have an acount',
                        style: titl1.merge(
                          TextStyle(color: black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
