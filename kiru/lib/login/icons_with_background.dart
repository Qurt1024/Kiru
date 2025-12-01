
import 'package:flutter/widgets.dart';
import 'package:kiru/colors.dart';
import 'package:flutter/material.dart';

class IconsWithBackground extends StatelessWidget{
  final String icon;
  const IconsWithBackground({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: AppColors.black,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        Positioned.fill(
          child: Center(child: Image.asset(icon, width: 24,height: 24)) 
          ),
      ],
    );
    
  }
}