import 'package:flutter/material.dart';
import 'package:startup_social_app/view/widget/group_community_suggestion_profile_card_widget.dart';

class ListItemGroupSuggestionProfile extends StatelessWidget {
  ListItemGroupSuggestionProfile({super.key});

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: groupSuggestions.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final item = groupSuggestions[index];
          return GroupCommunitySuggestionProfileCardWidget(
            profileUrl: item['image'] ?? '',
            count: item['count'] ?? '',
            name: item['name'] ?? '',
            description: item['description'] ?? '',
          );
        },
      ),
    );
  }
}
