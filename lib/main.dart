// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/screens/travel.dart';
import 'package:travel/screens/home_screen.dart';
import 'package:travel/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryColor: Color(0xff3EBACE),
        scaffoldBackgroundColor: Color(0xfff3f5f7),
      ),
      routes: {
        '/': (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.travelRoute: (context) => TravelPage(),
      },
    );
  }
}
