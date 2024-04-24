// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../shared/widget/navigation.dart';
import '../../shared/widget/text.dart';
import '../mainly.dart';
import 'signup_screen.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 84, 116),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 1, 67),
        title: Text('تسجيل الدخول',style: mhmoud,),
        actions: [
          TextButton(
            onPressed: () {
              goTo(context: context, screen: MainScreen());
            },
            child: Text('skap'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                labelText: 'البريد الإلكتروني',labelStyle: mhmoud
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                labelText: 'كلمة المرور',labelStyle: mhmoud
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                goTo(
                  context: context,
                  screen: MainScreen(),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 3, 49, 86),
                ),
              ),
              child: Text(
                'تسجيل الدخول',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    // إضافة الاكشن المرتبط بالصورة الأولى
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/g1.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // إضافة الاكشن المرتبط بالصورة الثانية
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/fac.jpg'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SinUp()),
                    );
                  },
                  child: Text(
                    'إنشاء حساب جديد',
                    style: mhmoud
                    ),
                  ),                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
