import 'package:flutter/cupertino.dart';

import '../constants.dart';



class ReusableGender extends StatelessWidget {
  ReusableGender(this.iconData, this.genderName);

  final IconData iconData;
  final String genderName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(genderName, style: KLabelTextStyle)
      ],
    );
  }
}
