// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unused_import
// ignore: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/contact_screen.dart';
import 'package:flutter_application_1/screen/profile_screen.dart';
import 'package:flutter_application_1/screen/setting.dart';
import 'screen/crud/creat_profile.dart';
import 'screen/screens.dart';

import 'screen/start_screen.dart';
import 'shared/widget/theme.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:  FirebaseOptions(
      apiKey: "AIzaSyBntcpY39p2tleJ1R6xYRBciSosOpKXSzI",
      appId: "1:893011582738:android:94353b2ff750d332db1dcb",
      messagingSenderId: "893011582738",
      projectId: "flutter-application-ed62c",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: ContactScreen(),
    );
  }
}
