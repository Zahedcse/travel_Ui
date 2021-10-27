// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel/constrains.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return VxBox(
      child: Icon(
        _icons[index],
      ).iconSize(25.0).iconColor(Theme.of(context).primaryColor),
    ).size(60.0, 60.0).color(kAccentColor).make().cornerRadius(30);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            "What would you like to find"
                .text
                .bold
                .size(30.0)
                .make()
                .pOnly(left: 20.0, right: 120.0),
            20.heightBox,
            VStack(
              [],
            ),
          ],
        ).pSymmetric(v: 35.0),
      ),
    );
  }
}
