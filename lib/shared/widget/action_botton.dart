// ignore_for_file: non_constant_identifier_names, must_be_immutable
import 'package:flutter/material.dart';

import 'colors.dart';

class ActionBotton extends StatelessWidget {
  ActionBotton(
      {super.key,
      required this.title,
      required this.action,
      this.BottonColor,
      this.bottonWidth,
      this.bottonheight,
      this.titlestyle});
  String title;
  Color? BottonColor;
  double? bottonWidth;
  double? bottonheight;
  TextStyle? titlestyle;
  Function() action;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: bottonheight,
      width: bottonWidth,
      child: ElevatedButton(
        onPressed: action,
        style: ElevatedButton.styleFrom(
          backgroundColor: BottonColor ?? orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Text(
          title,
          style: titlestyle,
        ),
      ),
    );
  }
}

class ActionBottonWithIcon extends StatelessWidget {
  ActionBottonWithIcon(
      {super.key,
      required this.title,
      required this.action,
      this.BottonColor,
      required this.icon});
  String title;
  Color? BottonColor;
  IconData icon;
  VoidCallback action;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(title),
      onPressed: action,
      style: ElevatedButton.styleFrom(
          backgroundColor: BottonColor ?? orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          )),
    );
  }
}
