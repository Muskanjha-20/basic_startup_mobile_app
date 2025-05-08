import 'package:flutter/material.dart';
import 'package:startup_social_app/utils/colors.dart';

class RecentChatDetailCardWidget extends StatefulWidget {
  final String profileUrl;
  final String name;
  final String message;
  final String date;

  const RecentChatDetailCardWidget({
    super.key,
    required this.profileUrl,
    required this.name,
    required this.message,
    required this.date,
  });

  @override
  State<RecentChatDetailCardWidget> createState() =>
      _RecentChatDetailCardWidgetState();
}

class _RecentChatDetailCardWidgetState
    extends State<RecentChatDetailCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(child: Image.asset(widget.profileUrl)),
          SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                widget.message,
                style: TextStyle(
                  color: AppColors.greyTextColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Spacer(),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              widget.date,
              style: TextStyle(
                color: AppColors.greyTextColor,
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
