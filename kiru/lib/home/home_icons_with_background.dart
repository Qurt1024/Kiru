
import 'package:flutter/widgets.dart';
import 'package:kiru/colors.dart';
import 'package:flutter/material.dart';

class HomeIconsWithBackground extends StatelessWidget{
  final String icon;
  const HomeIconsWithBackground({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.homeScreenButton,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        Positioned.fill(
          child: Center(child: Image.asset(icon, width: 20,height: 20)) 
          ),
      ],
    );
    
  }
}