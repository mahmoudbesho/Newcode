// ignore_for_file: unused_local_variable, must_be_immutable, unused_import, non_constant_identifier_names, use_build_context_synchronously, collection_methods_unrelated_type

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/profile_screen.dart';
import 'package:flutter_application_1/shared/widget/action_botton.dart';
import 'package:flutter_application_1/shared/widget/colors.dart';
import 'package:flutter_application_1/shared/widget/navigation.dart';
import 'package:flutter_application_1/shared/widget/text.dart';
import 'package:firebase_core/firebase_core.dart';

class CreateProfile extends StatelessWidget {
  CreateProfile({super.key});

  var name = TextEditingController();

  var phoneNumbercontroller = TextEditingController();

  var formkey = GlobalKey<FormState>();

  var phoneNumberNode = FocusNode();

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          backgroundColor: Color.fromRGBO(42, 63, 53, 1),
          appBar: AppBar(
            title: Text(
              "create profile",
              style: h5Bold,
            ),
            backgroundColor: green,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).requestFocus(phoneNumberNode);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Name cant be empty";
                      }
                      return null;
                    },
                    controller: name,
                    cursorColor: white,
                    keyboardType: TextInputType.name,
                    style: titl1,
                    decoration: InputDecoration(
                      label: Text(
                        'Name',
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
                  SizedBox(height: 10),
                  StatefulBuilder(
                    builder: (context, setState) => TextFormField(
                      focusNode: phoneNumberNode,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Number cant be empty";
                        }
                        return null;
                      },
                      controller: phoneNumbercontroller,
                      cursorColor: white,
                      keyboardType: TextInputType.phone,
                      style: titl1,
                      decoration: InputDecoration(
                        label: Text(
                          ' Number',
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ActionBotton(
                    bottonheight: 55,
                    BottonColor: green,
                    bottonWidth: double.infinity,
                    titlestyle: mhmoud,
                    title: 'Create ',
                    action: () async {
                      getUsre();
                      // if (formkey.currentState!.validate()) {
                      //   FocusScope.of(context).requestFocus(FocusNode());
                      //   CreateNewUser(
                      //     name: name.text,
                      //     phoneNumber: phoneNumbercontroller.text,
                      //     context: context,
                      //   );
                      // }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class MyUser {
  String name;
  String phoneNumber;
  String img;
  Map<String, dynamic> socialMediaPlatform;
  MyUser({
    this.name = '',
    this.phoneNumber = '',
    this.img = '',
    this.socialMediaPlatform = const {},
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'img': img,
      'socialMediaPlatform': socialMediaPlatform,
    };
  }

  MyUser fromMap(Map<String, dynamic>? myMap) {
    return MyUser(
        img: myMap!['img'],
        name: myMap['name'],
        phoneNumber: myMap['phoneNumber'],
        socialMediaPlatform: myMap['socialMediaPlatform']);
  }
}

CreateNewUser(
    {required String name, required String phoneNumber, context}) async {
  var ref = FirebaseFirestore.instance.collection('users').doc();
  var ahmed = MyUser(
      img: 'wwwrhjkm',
      name: name,
      phoneNumber: phoneNumber,
      socialMediaPlatform: {
        'ugntf': 'fyguhij',
      });
  await ref.set(
    ahmed.toMap(),
  );
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'user added succesfuly',
        style: titl1,
      ),
      backgroundColor: lightred,
      showCloseIcon: true,
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
    ),
  );
  await Future.delayed(
    Duration(seconds: 3),
  );
  goTo(context: context, screen: ProfileScreen());
}

getUsre() async {
  var ref = FirebaseFirestore.instance
      .collection('users')
      .doc('fvj7TpfYvGiLXwpkWgfy');
  var myDoc = await ref.get();
  var theTrueData = MyUser().fromMap(myDoc.data());
  print(theTrueData.name);
  print(theTrueData.img);
  print(theTrueData.phoneNumber);
  print(theTrueData.socialMediaPlatform);
}
