import 'package:bmi_calculator/resuable_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';
import 'main.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? selectedGender;
  int height = 180;
  Color maleCardColor = KInActiveCardColor;
  Color femaleCardColor = KInActiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == GenderType.male
                          ? KActiveCardColor
                          : KInActiveCardColor,
                      cardChild: ReusableGender(FontAwesomeIcons.mars, 'Male'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == GenderType.female
                          ? KActiveCardColor
                          : KInActiveCardColor,
                      cardChild:
                          ReusableGender(FontAwesomeIcons.venus, 'Female'),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
              child: ReusableCard(
                color: KActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(
                      'HEIGHT',
                      style: KLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: KNumberTextStyle),
                        Text('cm', style: KLabelTextStyle)
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();
                          print(newValue);
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: KActiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: KActiveCardColor),
                )
              ],
            )),
            Container(
              color: KBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: KBottomContHeight,
            )
          ],
        ));
  }
}
