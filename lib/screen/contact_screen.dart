// ignore_for_file: must_be_immutable, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, duplicate_ignore
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';


// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

import '../shared/widget/action_botton.dart';
import '../shared/widget/colors.dart';
import 'social_media_icon.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});
  Map<String, String> socialMedia = {
    '1.jpg': 'https://wa.me/+201026187327',
    'fac.jpg': 'https://www.facebook.com/',
    'inst.jpg':
        'https://instagram.com/mhmoudelbeshbeshy?igshid=MzMyNGUyNmU2YQ==',
    'you.jpg': 'https://www.youtube.com/',
    'lin.jpg': 'https://www.linkedin.com/feed/',
    'te.jpg': 'https://twitter.com/home?lang=ar',
    'tel.jpg': 'tg:01026187327',
    'sn.jpg': 'https://www.snapchat.com/ar',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 7, 30),
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/my.jpg'),
                radius: 100,
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.brown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mahmoud shreef',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(
                        Icons.near_me_rounded,
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse('Tg:01026187327'));
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionBotton(
                    title: 'Edit Profile',
                    action: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.info,
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 5,
                        ),
                        width: 500,
                        buttonsBorderRadius: const BorderRadius.all(
                          Radius.circular(6),
                        ),
                        dismissOnTouchOutside: true,
                        dismissOnBackKeyPress: false,
                        onDismissCallback: (type) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Dismissed by $type'),
                            ),
                          );
                        },
                        headerAnimationLoop: false,
                        animType: AnimType.bottomSlide,
                        desc: 'This Dialog can be ...........',
                        showCloseIcon: true,
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                      ).show();
                    },
                    BottonColor: black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ActionBotton(
                    title: 'Delet Profile',
                    action: () {
                      print('hi mhmoud');
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Delet Item',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0),
                                  ),
                                  SizedBox(height: 16.0),
                                  Text(
                                      'Are you sure you want to delete this item?'),
                                  SizedBox(height: 16.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        child: Text('Cancel'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      SizedBox(width: 16),
                                      ElevatedButton(
                                        child: Text('Delete'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    BottonColor: lightred,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text(
                  'Bottom',
                  style: TextStyle(
                      fontSize: 25, height: 1, fontWeight: FontWeight.w100),
                ),
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        decoration:
                            BoxDecoration(border: Border.all(), color: blue),
                        height: 300,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '01026187327',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    color: Colors.red,
                    icon: Icon(
                      Icons.phone,
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse('tel:01026187327'));
                    },
                  ),
                ],
              ),
              GridView.builder(
                itemCount: socialMedia.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (mycontext, index) {
                  return SocialMediaIcon(
                    socialMedia: socialMedia.keys.toList()[index],
                    socialMediaLink: socialMedia.values.toList()[index],
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
