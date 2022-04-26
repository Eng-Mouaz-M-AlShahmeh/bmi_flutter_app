/// Developed by: Eng Mouaz M AlShahmeh
import 'package:bmi_flutter_app/presentation/components/bottom_button.dart';
import 'package:bmi_flutter_app/presentation/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_flutter_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {Key? key, this.interpretation, this.bmiResult, this.resultText})
      : super(key: key);

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'مؤشر كتلة الجسم',
          style: GoogleFonts.almarai(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomRight,
              child: Text(
                'نتيجتك',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText!.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult!,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation!,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'احسب مرة أخرى',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
