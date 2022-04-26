/// Developed by: Eng Mouaz M AlShahmeh
import 'package:flutter/material.dart';
import 'package:bmi_flutter_app/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, this.onTap, this.buttonTitle})
      : super(key: key);

  final VoidCallback? onTap;
  final String? buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle!,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
