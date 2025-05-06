import 'package:flutter/material.dart';
import 'package:startup_social_app/constants/colors.dart';
import 'package:startup_social_app/custom/app_bar/custom_app_bar.dart';
import 'package:startup_social_app/custom/buttons/custom_submit_button.dart';
import 'package:startup_social_app/custom/group_and_community_updates_profile_custom_card.dart';
import 'package:startup_social_app/custom/list_social_industry_select_widget.dart';
import 'package:startup_social_app/custom/detailed_recent_post_widget.dart';
import 'package:startup_social_app/custom/recent_message_chat.dart';
import 'package:startup_social_app/custom/add_story_list_widgets.dart';
import 'package:startup_social_app/custom/text_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> groupSuggestions = [
    {
      'name': 'Riya Korana',
      'description': 'IT Service group',
      'count': '3+',
      'image': 'assets/dp1.png',
    },
    {
      'name': 'Disha Dubey',
      'description': 'IT Service group',
      'count': '9+',
      'image': 'assets/dp2.png',
    },
    {
      'name': 'Deepti Chourasia',
      'description': 'IT services related',
      'count': '10+',
      'image': 'assets/dp3.png',
    },
  ];
  final List<Map<String, String>> recentMessages = [
    {
      'profileUrl': 'assets/recent_msg1.png',
      'name': 'Satyam Sharma',
      'message': 'You : Are you interested for website',
      'date': '16/11/2024',
    },
    {
      'profileUrl': 'assets/recent_msg2.png',
      'name': 'Deepti Chourasia',
      'message': 'You : Are you interested for website',
      'date': '10/11/2024',
    },
    {
      'profileUrl': 'assets/recent_msg3.png',
      'name': 'Riya Singh',
      'message': 'You : Are you interested for website',
      'date': '15/11/2024',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          titleColor: AppColors.whiteColor,
          // title: 'hjhjh',
          // backgroundColor: AppColors.primaryColor,
          // backbuttonColor: AppColors.whiteColor,
          prefix: Image(image: AssetImage('assets/img17.png')),
          suffix: [
            Icon(
              Icons.add_circle_outline_rounded,
              color: AppColors.greyTextColor,
            ),
            SizedBox(width: 5),
            Icon(Icons.search, color: AppColors.greyTextColor),
            SizedBox(width: 5),
            Icon(Icons.message_outlined, color: AppColors.greyTextColor),
          ],
          centerTitle: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          // padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              AddStoryListWidgets(),
              SizedBox(height: 10),
              TextHeader(
                headerOne: 'Industry Posts for you',
                headerTwo: 'Explore',
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.47,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: [
                        ListSocialIndustrySelectWidget(
                          label: 'Computer Vision',
                        ),
                        ListSocialIndustrySelectWidget(label: 'CRM'),
                        ListSocialIndustrySelectWidget(
                          label: 'Internet of Things',
                        ),
                        ListSocialIndustrySelectWidget(label: 'Robotics'),
                        ListSocialIndustrySelectWidget(
                          label: 'Business Process Management',
                        ),
                        ListSocialIndustrySelectWidget(
                          label: 'Logistics Management',
                        ),
                        ListSocialIndustrySelectWidget(label: 'innovation'),
                        ListSocialIndustrySelectWidget(label: 'IOT'),
                        ListSocialIndustrySelectWidget(label: 'User Research'),
                        ListSocialIndustrySelectWidget(label: 'More +'),
                      ],
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Note: At least 2 Industry select and go to next ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomSubmitButton(onPressed: () {}, text: 'Save'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextHeader(
                headerOne: 'Groups & Community Updates',
                headerTwo: 'Explore',
              ),
              SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: groupSuggestions.length,
                  separatorBuilder: (context, index) => SizedBox(width: 5),
                  itemBuilder: (context, index) {
                    final item = groupSuggestions[index];
                    return GroupAndCommunityUpdatesProfileCustomCard(
                      count: item['count'] ?? '',
                      description: item['description'] ?? '',
                      name: item['name'] ?? '',
                      profileUrl: item['image'] ?? '',
                    );
                  },
                ),
              ),
              SizedBox(height: 12),
              TextHeader(headerOne: 'Recent Messages', headerTwo: 'View All'),
              SizedBox(height: 12),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: recentMessages.length,
                separatorBuilder: (context, index) => SizedBox(height: 5),
                itemBuilder: (context, index) {
                  final item = recentMessages[index];
                  return RecentMessageChat(
                    profileUrl: item['profileUrl'] ?? '',
                    name: item['name'] ?? '',
                    message: item['message'] ?? '',
                    date: item['date'] ?? '',
                  );
                },
              ),
              SizedBox(height: 10),

              TextHeader(headerOne: 'Recent Posts', headerTwo: 'Explore'),
              SizedBox(height: 10),
              DetailedRecentPostWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
