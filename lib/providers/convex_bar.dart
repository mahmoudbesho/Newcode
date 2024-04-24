// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, camel_case_types

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../shared/widget/colors.dart';




class convex_bar extends StatelessWidget {
  convex_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ConvexAppBar(
      backgroundColor: navy,
      items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.map, title: 'Discovery'),
        TabItem(icon: Icons.add, title: 'Add'),
        TabItem(icon: Icons.message, title: 'Message'),
        TabItem(icon: Icons.people, title: 'Profile'),
      ],
      onTap: (int i) => print('click index=$i'),
    ));
  }
}
