import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmiText;
  final String bmiInterpretation;

  const ResultPage(
      {Key key, this.bmiResult, this.bmiText, this.bmiInterpretation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RESULT')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    bmiInterpretation,
                    textAlign: TextAlign.center,
                    style: kDescriptionTextStyle,
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          BottomButton(
            buttonTitle: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
