
import 'package:flutter/material.dart';

import '../../shared/widget/colors.dart';
import '../../shared/widget/navigation.dart';
import '../login/languag.dart';

class OnBoarding2Screen extends StatelessWidget {
  const OnBoarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 64, 141, 159),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120),
            Image(image: AssetImage('assets/images/log4.jpg')),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 150,
            ),
            ElevatedButton(
              onPressed: () {
                goTo(
                  context: context,
                  screen: Language(),
                );
              },
              // ignore: sort_child_properties_last
              child: Text(
                'continue',
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: darkred),
            ),
          ],
        ),
      ),
    );
  }
}
