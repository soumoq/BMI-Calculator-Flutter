import 'package:flutter/cupertino.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onPress;

  BottomButton({required this.buttonTitle, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: KLergeButtonTextStyle,
          ),
        ),
        color: KBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: KBottomContHeight,
      ),
    );
  }
}
