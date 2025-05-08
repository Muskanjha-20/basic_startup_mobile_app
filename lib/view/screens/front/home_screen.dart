import 'package:flutter/material.dart';
import 'package:startup_social_app/utils/colors.dart';
import 'package:startup_social_app/view/widget/custom_app_bar.dart';
import 'package:startup_social_app/view/widget/custom_submit_button.dart';
import 'package:startup_social_app/view/widget/header_label_widget.dart';
import 'package:startup_social_app/view/widget/list_add_story_card_widgets.dart';
import 'package:startup_social_app/view/widget/list_item_group_suggestion_profile.dart';
import 'package:startup_social_app/view/widget/list_item_industry_type_widget.dart';
import 'package:startup_social_app/view/widget/list_item_recent_chat.dart';
import 'package:startup_social_app/view/widget/post_detail_widget.dart';
import 'package:startup_social_app/view/widget/social_industry_select_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              ListAddStoryCardWidget(),
              SizedBox(height: 10),
              HeaderLabelWidget(
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
                    // ListItemIndustryTypeWidget(),
                    Wrap(
                      children: [
                        SocialIndustrySelectWidget(label: 'Computer Vision'),
                        SocialIndustrySelectWidget(label: 'CRM'),
                        SocialIndustrySelectWidget(label: 'Internet of Things'),
                        SocialIndustrySelectWidget(label: 'Robotics'),
                        SocialIndustrySelectWidget(
                          label: 'Business Process Management',
                        ),
                        SocialIndustrySelectWidget(
                          label: 'Logistics Management',
                        ),
                        SocialIndustrySelectWidget(label: 'innovation'),
                        SocialIndustrySelectWidget(label: 'IOT'),
                        SocialIndustrySelectWidget(label: 'User Research'),
                        SocialIndustrySelectWidget(label: 'More +'),
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
              HeaderLabelWidget(
                headerOne: 'Groups & Community Updates',
                headerTwo: 'Explore',
              ),
              SizedBox(height: 10),
              ListItemGroupSuggestionProfile(),

              SizedBox(height: 12),
              HeaderLabelWidget(
                headerOne: 'Recent Messages',
                headerTwo: 'View All',
              ),
              SizedBox(height: 12),
              ListItemRecentChat(),
              SizedBox(height: 10),
              HeaderLabelWidget(
                headerOne: 'Recent Posts',
                headerTwo: 'Explore',
              ),
              SizedBox(height: 10),
              PostDetailWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
