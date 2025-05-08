import 'package:flutter/material.dart';
import 'package:startup_social_app/utils/colors.dart';

class ListItemIndustryTypeWidget extends StatefulWidget {
  const ListItemIndustryTypeWidget({super.key});

  @override
  State<ListItemIndustryTypeWidget> createState() =>
      _ListItemIndustryTypeWidgetState();
}

class _ListItemIndustryTypeWidgetState
    extends State<ListItemIndustryTypeWidget> {
  final List<String> industryList = [
    'Computer Vision',
    'CRM',
    'Internet of Things',
    'Robotics',
    'Business Process Management',
    'Logistics Management',
    'Innovation',
    'IOT',
    'User Research',
    'More +',
  ];

  final Set<String> selected = {};

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: industryList.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final label = industryList[index];
          final isSelected = selected.contains(label);
          return GestureDetector(
            onTap: () {
              setState(() {
                if (isSelected) {
                  selected.remove(label);
                } else {
                  selected.add(label);
                }
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primaryColor : Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                label,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
