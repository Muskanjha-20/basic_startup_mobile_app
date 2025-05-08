import 'package:flutter/material.dart';
import 'package:startup_social_app/utils/colors.dart';

class StoryImageCardWidget extends StatelessWidget {
  final String profileUrl;
  final String imageUrl;
  final bool isAddStory;
  final String name;

  const StoryImageCardWidget({
    super.key,
    required this.profileUrl,
    required this.imageUrl,
    required this.isAddStory,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.26,
        width: MediaQuery.of(context).size.width * 0.34,
        // margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: isAddStory ? Colors.white : null,
          image:
              isAddStory
                  ? null
                  : DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
          border: Border.all(
            color: isAddStory ? AppColors.borderColor : Colors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.asset(
                    profileUrl,
                    height: 35,
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            if (isAddStory)
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Add Story',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
              ),

            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                isAddStory ? 'Your Story' : name,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  shadows: [Shadow(blurRadius: 2, color: Colors.black)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
