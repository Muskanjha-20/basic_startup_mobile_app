import 'package:flutter/material.dart';
import 'package:startup_social_app/view/widget/recent_chat_detail_card_widget.dart';

class ListItemRecentChat extends StatelessWidget {
  ListItemRecentChat({super.key});

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
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: recentMessages.length,
        separatorBuilder: (context, index) => SizedBox(height: 5),
        itemBuilder: (context, index) {
          final item = recentMessages[index];
          return RecentChatDetailCardWidget(
            profileUrl: item['profileUrl'] ?? '',
            name: item['name'] ?? '',
            message: item['message'] ?? '',
            date: item['date'] ?? '',
          );
        },
      ),
    );
  }
}
