import 'package:flutter/material.dart';
import 'package:startup_social_app/view/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? description;
  final Widget? prefix;
  final List<Widget>? suffix;
  final bool? centerTitle;
  final Color backgroundColor;
  final Color titleColor;
  final Color? backbuttonColor;
  final bool showBackButton;

  const CustomAppBar({
    super.key,
    this.title,
    this.description,
    this.prefix,
    this.suffix,
    this.backgroundColor = Colors.white,
    this.centerTitle,
    required this.titleColor,
    this.showBackButton = true,
    this.backbuttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 2,
      shadowColor: AppColors.greyTextColor,

      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      actionsPadding: const EdgeInsets.only(right: 10),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (title != null)
            Text(
              title!,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: titleColor,
              ),
            ),
          if (description != null)
            Text(
              description!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.greyTextColor,
              ),
            ),
        ],
      ),
      leading:
          prefix ??
          (showBackButton
              ? InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: backbuttonColor,
                    size: 18,
                  ),
                ),
              )
              : null),
      actions: suffix,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
