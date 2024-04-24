import 'package:flutter/material.dart';

void goTo({required BuildContext context, screen}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}
