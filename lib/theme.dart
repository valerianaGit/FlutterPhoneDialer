import 'package:flutter/material.dart';

final darkBlue = Color(0xff2969ff);

ThemeData phoneTheme(BuildContext context) => ThemeData(
  iconTheme: IconThemeData(
    color: darkBlue,
  ),
  primarySwatch: Colors.blue,
  primaryColor: darkBlue,
  textTheme: Theme.of(context).textTheme.apply(
    bodyColor: Colors.green,
    fontSizeFactor: 3,
  ),
);