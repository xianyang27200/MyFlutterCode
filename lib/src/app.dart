//import 'package:BMI/src/calculator_brain.dart';
import 'package:BMI/src/Screen1/result.dart';
import 'package:BMI/src/calculator_brain.dart';
import 'package:BMI/src/widgets/result_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './widgets/card_content.dart';
import './widgets/cards.dart';
import './widgets/constants.dart';
import './widgets/ibiro_imyaka.dart';

enum Gender { female, male }

class BmiPage extends StatefulWidget {
  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 65;
  int ages = 19;

  void changeIbiro() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusebleClass(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    ibara: selectedGender == Gender.female
                        ? kactivecolorHexCard
                        : kinactiveColorHexCard,
                    cardChild: ReusableColumChild(
                      symbol: FontAwesomeIcons.mars,
                      title: 'GORE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusebleClass(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    ibara: selectedGender == Gender.male
                        ? kactivecolorHexCard
                        : kinactiveColorHexCard,
                    cardChild: ReusableColumChild(
                      symbol: FontAwesomeIcons.venus,
                      title: 'GABO',
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusebleClass(
                ibara: kactivecolorHexCard,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: klabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: klabelnumbers,
                        ),
                        Text(
                          'cm',
                          style: klabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 16.0,
                        ),
                        thumbColor: kcolorHexBottom,
                        activeTrackColor: Colors.white,
                        overlayColor: kovelayColor,
                        inactiveTrackColor: kinactiveTrcakColor,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusebleClass(
                      ibara: kactivecolorHexCard,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'IBIRO',
                            style: klabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: klabelnumbers,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                ibiro: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                ibiro: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusebleClass(
                      ibara: kactivecolorHexCard,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'IMYAKA',
                            style: klabelTextStyle,
                          ),
                          Text(
                            ages.toString(),
                            style: klabelnumbers,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundAge(
                                icon: FontAwesomeIcons.minus,
                                dukozeho: () {
                                  setState(() {
                                    ages--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundAge(
                                icon: FontAwesomeIcons.plus,
                                dukozeho: () {
                                  setState(() {
                                    ages++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                CaLculatorBrain calc =
                    CaLculatorBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      resultNumber: calc.getResult(),
                    ),
                  ),
                );
              },
              child: ButtomNavigator(
                label: 'IBISUBIZO',
              ),
            )
          ],
        ),
      ),
    );
  }
}
