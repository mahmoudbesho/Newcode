// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, avoid_unnecessary_containers, must_be_immutable, body_might_complete_normally_nullable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/mainly.dart';
import 'package:flutter_application_1/shared/widget/action_botton.dart';
import 'package:flutter_application_1/shared/widget/navigation.dart';
import '../../shared/widget/colors.dart';
import '../../shared/widget/text.dart';
import 'signup.dart';

class Login_11 extends StatelessWidget {
  Login_11({super.key});

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
          backgroundColor: white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pom.jpg'),
                      radius: 70,
                      backgroundColor: trnsparent,
                    ),
                    SizedBox(
                      height: 40,
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
                    ActionBotton(
                      bottonheight: 40,
                      BottonColor: green,
                      bottonWidth: double.infinity,
                      titlestyle: h5Bold,
                      title: 'Login ',
                      action: () {
                        if (formkey.currentState!.validate()) {
                          goTo(context: context, screen: MainScreen());
                        }
                      },
                    ),
                    TextButton(
                      child: Text(
                        'forget my password',
                        style: titl1.merge(
                          TextStyle(color: black),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 50),
                    ActionBotton(
                        bottonheight: 40,
                        BottonColor: green,
                        bottonWidth: double.infinity,
                        titlestyle: h5Bold,
                        title: 'Login with Google',
                        action: () {}),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        goTo(context: context, screen: signup());
                      },
                      child: Text(
                        'Dont have an acount',
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
