// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'constant.dart';

class IconContent extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  IconContent({this.icon, this.label});
  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 56.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label!, style: labelTextStyle),
      ],
    );
  }
}
