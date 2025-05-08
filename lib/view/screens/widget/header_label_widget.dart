import 'package:flutter/material.dart';
import 'package:startup_social_app/utils/colors.dart';

class HeaderLabelWidget extends StatelessWidget {
  final String headerOne;
  final String headerTwo;
  const HeaderLabelWidget({
    super.key,
    required this.headerOne,
    required this.headerTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerOne,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,

            color: Colors.black,
          ),
        ),
        Text(
          headerTwo,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,

            color: AppColors.blueTextColor,
          ),
        ),
      ],
    );
  }
}
