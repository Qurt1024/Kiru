
import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/images.dart';
import 'package:kiru/login/icons_with_background.dart';

class IconsPanel extends StatelessWidget {
  const IconsPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 23,
      children: [
        Text(
          'Войти с помощью',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            IconsWithBackground(icon: AppImages.google),
            IconsWithBackground(icon: AppImages.facebook),
            IconsWithBackground(icon: AppImages.vk)
          ],
        )
      ],
    );
    
  }
}