import 'package:flutter/material.dart';
import 'package:startup_social_app/utils/colors.dart';

class GroupAndCommunityUpdatesProfileCustomCard extends StatelessWidget {
  final String profileUrl;
  final String count;
  final String name;
  final String description;
  const GroupAndCommunityUpdatesProfileCustomCard({
    super.key,
    required this.profileUrl,
    required this.count,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        // color: Colors.purple,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.gridBorderColor, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                // backgroundColor: Colors.transparent,
                // minRadius: 23,
                // maxRadius: 24,
                radius: 25,
                child: Image.asset(profileUrl, height: 60, width: 50),
              ),
              CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.backgroundColor,
                child: Text(
                  count,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              // color: AppColors.blackTextColor,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),

          Text(
            description,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.blackTextColor,
              // color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
