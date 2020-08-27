//import 'package:BMI/src/app.dart';
import 'package:BMI/src/widgets/result_widget.dart';
import 'package:BMI/src/widgets/cards.dart';
import 'package:BMI/src/widgets/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double resultNumber;

  ResultPage({this.resultNumber});
  //final double result = 43.9;

  String getResultTitle() {
    if (resultNumber >= 25) {
      return 'OVERWEIGHT';
    } else if (resultNumber > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getResultInterpretation() {
    if (resultNumber >= 25.0) {
      return 'you have a higher than normal body weight, try to exercise more';
    } else if (resultNumber > 18.0) {
      return 'you have a normal body weight. God job!!';
    } else {
      return 'You have a lower than normal body weight,try to eat a bit more';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IBISUBIZO BYA BMI YANYU'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'IBISUBIZO BYAWE NI:',
                  style: kResultLabetTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ReusebleClass(
                ibara: kactivecolorHexCard,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ResultInfo(
                        label1: getResultTitle().toString(),
                        cont: kResult1TextStyle,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        resultNumber.toStringAsFixed(1),
                        style: klabelResultnumbers,
                      ),
                    ),
                    Expanded(
                      child: ResultInfo(
                        label1: getResultInterpretation().toString(),
                        cont: kResult2TextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/'),
              child: ButtomNavigator(
                label: 'RE-CALCULATE',
              ),
            )
          ],
        ));
  }
}
