import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function ibiro;
  RoundIconButton({this.icon, this.ibiro});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: ibiro,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}

class RoundAge extends StatelessWidget {
  final IconData icon;
  final Function dukozeho;
  RoundAge({this.icon, this.dukozeho});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: dukozeho,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
