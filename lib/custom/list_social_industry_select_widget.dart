import 'package:flutter/material.dart';
import 'package:startup_social_app/constants/colors.dart';

class ListSocialIndustrySelectWidget extends StatefulWidget {
  final String label;

  const ListSocialIndustrySelectWidget({super.key, required this.label});

  @override
  _ListSocialIndustrySelectWidgetState createState() =>
      _ListSocialIndustrySelectWidgetState();
}

class _ListSocialIndustrySelectWidgetState
    extends State<ListSocialIndustrySelectWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(30),
          // border: Border.all(color: AppColors.primaryColor),
        ),
        child: Text(
          widget.label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
