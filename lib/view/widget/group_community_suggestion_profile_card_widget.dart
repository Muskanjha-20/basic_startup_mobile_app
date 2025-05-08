import 'package:flutter/material.dart';
import 'package:startup_social_app/utils/colors.dart';

class GroupCommunitySuggestionProfileCardWidget extends StatelessWidget {
  final String profileUrl;
  final String count;
  final String name;
  final String description;

  const GroupCommunitySuggestionProfileCardWidget({
    super.key,
    required this.profileUrl,
    required this.count,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.gridBorderColor, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(radius: 25, backgroundImage: AssetImage(profileUrl)),
              CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.backgroundColor,
                child: Text(
                  count,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            name,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.blackTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
