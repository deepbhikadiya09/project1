import 'package:flutter/material.dart';
import 'package:project1/CountryPage.dart';
import 'mainpage.dart';
import 'CountryPage.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MainPage(),
        '/CountryPage': (context) => CountryPage(),
      },
    ),
  );
}