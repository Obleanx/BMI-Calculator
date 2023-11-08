// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, unused_import

// this entire page is dedicated to the entire functionality of the app
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizapp/result_page.dart';
import 'package:quizapp/round_icon_button.dart';
import 'constant.dart';
import 'icon_content.dart';
import 'last_button.dart';
import 'reuseable_card.dart';
import 'calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 22;

  // Color maleCardColour = inactiveCardColor;
  // Color femalCardColour = inactiveCardColor;

//  void updateColour(Gender selectedGender) {
  // //male card pressed
  //if (selectedGender == Gender.male) {
  //if (maleCardColour == inactiveCardColor) {
  //maleCardColour = activeCardColor;
  //   femalCardColour = inactiveCardColor;
  //   } else {
  //   maleCardColour = inactiveCardColor;
  //    }
  //  }
  //female card pressed
  //if (selectedGender == Gender.female) {
  //if (femalCardColour == inactiveCardColor) {
  //femalCardColour = activeCardColor;
  // maleCardColour = inactiveCardColor;
  // } else {
  //   femalCardColour = inactiveCardColor;
  // }
  //  }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'B M I  C A C U L A T O R',
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: 'Georgia',
            ),
          ),
        ),
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
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReuseableCard(
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    CardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'M A L E',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReuseableCard(
                    colour: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    CardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'F E M A L E',
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReuseableCard(
              colour: activeCardColor,
              CardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'H E I G H T',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: NumberOfTextStyle,
                      ),
                      Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  // all of the slider design is done here!!
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color.fromARGB(41, 173, 140, 150),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 13.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 23.0),
                    ),
                    // all of the sliders functionality is done here!!
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  colour: activeCardColor,
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: labelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: NumberOfTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  colour: activeCardColor,
                  CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: labelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: NumberOfTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              }),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
          LastButton(
            buttonTittle: 'calculate',
            onTap: () {
              // ignore: unused_local_variable
              CalculatorBrain calc = CalculatorBrain(height, weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ResultsPage(
                        bmiResult: calc.calculateBMI(),
                        interpretation: calc.getResult(),
                        resultText: calc.getInterpretation(),
                      )),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
