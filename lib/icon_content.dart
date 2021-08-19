import 'package:flutter/cupertino.dart';

const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

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
        Text(genderName, style: labelTextStyle)
      ],
    );
  }
}
