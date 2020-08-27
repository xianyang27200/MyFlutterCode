import 'package:flutter/material.dart';

class ReusebleClass extends StatelessWidget {
  final Color ibara;
  final Widget cardChild;
  final Function onPress;
  ReusebleClass({@required this.ibara, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: ibara,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
