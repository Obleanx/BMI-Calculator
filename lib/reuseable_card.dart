import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  // ignore: non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  ReuseableCard({required this.colour, this.CardChild});
  final Color? colour;
  // ignore: non_constant_identifier_names
  final Widget? CardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: sort_child_properties_last
      child: CardChild,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
