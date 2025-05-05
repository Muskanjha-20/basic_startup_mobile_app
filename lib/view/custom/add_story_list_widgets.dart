import 'package:flutter/material.dart';
import 'package:startup_social_app/view/custom/story_image_card.dart';

class AddStoryListWidgets extends StatelessWidget {
  const AddStoryListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> storyList = [
      {
        'profileUrl': 'assets/appbardp.png',
        'imageUrl': 'assets/storyimg1.png',
        'isAddStory': true,
        'name': '',
      },
      {
        'profileUrl': 'assets/dp3.png',
        'imageUrl': 'assets/storyimg1.png',
        'isAddStory': false,
        'name': 'Ankit Singh',
      },
      {
        'profileUrl': 'assets/dp1.png',
        'imageUrl': 'assets/storyimg2.png',
        'isAddStory': false,
        'name': 'Riya Sharma',
      },
      {
        'profileUrl': 'assets/dp2.png',
        'imageUrl': 'assets/story_img3.png',
        'isAddStory': false,
        'name': 'Sonam Jain',
      },
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.26,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        // padding: const EdgeInsets.symmetric(horizontal: 1),
        itemCount: storyList.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final story = storyList[index];
          return StoryImageCard(
            profileUrl: story['profileUrl'] as String,
            imageUrl: story['imageUrl'] as String,
            isAddStory: story['isAddStory'] as bool,
            name: story['name'] as String,
          );
        },
      ),
    );
  }
}
