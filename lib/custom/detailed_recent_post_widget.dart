import 'package:flutter/material.dart';
import 'package:startup_social_app/constants/colors.dart';
import 'package:startup_social_app/custom/recent_post_hash_tag_widget.dart';

class DetailedRecentPostWidget extends StatelessWidget {
  const DetailedRecentPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.58,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 22,
                child: Image.asset('assets/dp6.png'),
              ),
              SizedBox(width: 6),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sonam Jain",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "14 Min ago",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppColors.blackTextColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                "Follow",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          Divider(color: Colors.black, thickness: 0.3),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      'There are many variations passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humor,',
                  style: TextStyle(
                    color: AppColors.blackTextColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.4,
                  ),
                ),
                TextSpan(
                  text: ' Read More',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Image.asset('assets/rect_post1.png'),
          ),
          SizedBox(height: 6),
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (context, index) => SizedBox(width: 3),
              itemBuilder: (context, index) => RecentPostHashTagWidget(),
            ),
          ),
          Divider(color: Colors.black, thickness: 0.3),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1.4)],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.remove_red_eye_sharp,
                  color: AppColors.greyTextColor,
                ),
                Text(
                  '10.5K',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.greyTextColor,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.thumb_up_alt, color: AppColors.greyTextColor),
                SizedBox(width: 5),

                Text(
                  '2.5K',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.greyTextColor,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.message, color: AppColors.greyTextColor),
                SizedBox(width: 5),

                Text(
                  '6K',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.greyTextColor,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.share_sharp, color: AppColors.greyTextColor),
                SizedBox(width: 5),

                Text(
                  '12K',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.greyTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
