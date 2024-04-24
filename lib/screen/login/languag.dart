import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/login/login.dart';
import 'package:flutter_application_1/shared/widget/colors.dart';
import 'package:flutter_application_1/shared/widget/navigation.dart';
import 'package:flutter_application_1/shared/widget/text.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String selectedLanguage = ''; // متغير لتتبع اللغة المختارة

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose languag',
          style: mhmoud,
        ),
        backgroundColor: green,
      ),
      backgroundColor: Color.fromRGBO(42, 63, 53, 1),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Choose language',
                style: TextStyle(color: white, fontSize: 35)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'arabic',
                  groupValue: selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      selectedLanguage = value.toString();
                    });
                  },
                ),
                Text('Arabic', style: TextStyle(fontSize: 35, color: white)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'english',
                  groupValue: selectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      selectedLanguage = value.toString();
                    });
                  },
                ),
                Text('English', style: TextStyle(color: white, fontSize: 35)),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedLanguage.isNotEmpty) {
                  goTo(
                    context: context,
                    screen: Login_11(),
                  );
                } else {
                  // يمكنك إضافة رسالة تنبيه هنا إذا كانت لم يتم اختيار لغة
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: green,
                padding: EdgeInsets.all(20),
              ),
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
