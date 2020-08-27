import 'package:flutter/material.dart';

import 'constants.dart';

class ButtomNavigator extends StatelessWidget {
  final String label;
  ButtomNavigator({this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 12.0,
      ),
      child: Center(
        child: Text(
          label,
          style: kbuttomLabetTextStyle,
        ),
      ),
      color: kcolorHexBottom,
      height: kbottomHeightContainer,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10.0),
    );
  }
}

class ResultInfo extends StatelessWidget {
  final String label1;
  final TextStyle cont;
  ResultInfo({this.label1, this.cont});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      alignment: Alignment.center,
      width: double.infinity,
      child: Text(
        label1,
        style: cont,
      ),
    );
  }
}
