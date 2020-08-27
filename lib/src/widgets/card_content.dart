import 'package:flutter/material.dart';
import './constants.dart';

class ReusableColumChild extends StatelessWidget {
  final IconData symbol;
  final String title;
  ReusableColumChild({this.symbol, this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          symbol,
          size: 80.0,
        ),
        SizedBox(
          height: 7.0,
        ),
        Text(
          title,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}
