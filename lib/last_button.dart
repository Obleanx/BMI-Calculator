// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'constant.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class LastButton extends StatelessWidget {
  final Function? onTap;
  final String? buttonTittle;
  // ignore: prefer_const_constructors_in_immutables
  LastButton({required this.buttonTittle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // ignore: unused_element
        onTap!();
      },
      child: Container(
        color: bottomcontainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 15.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
          child: Text(
            buttonTittle!,
            style: CalculatorButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
