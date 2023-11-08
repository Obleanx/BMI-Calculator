// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData? icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      // ignore: sort_child_properties_last
      child: Icon(icon),
      onPressed: () {
        onPressed();
      },
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
