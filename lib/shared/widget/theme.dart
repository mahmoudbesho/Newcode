import 'package:flutter/material.dart';

import 'colors.dart';
import 'text.dart';

var appTheme = ThemeData(
  appBarTheme: AppBarTheme(backgroundColor: navy),
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: darkorange),
  textTheme: TextTheme(
    displayLarge: h1,
    displayMedium: h2,
    displaySmall: h3,
    headlineSmall: h4,
    headlineLarge: h5,
    titleLarge: titl1,
    titleMedium: titl2,
  ),
);
