import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/home/post_view.dart';
import 'package:kiru/home/profile_box.dart';
import 'package:kiru/images.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.home_screen,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.home_screen,
        leading:
         IconButton(onPressed: () {},
          icon: Image.asset(AppImages.settings,width: 24,height: 24,)
          ),
        actions: [
           IconButton(onPressed: () {},
          icon: Image.asset(AppImages.extra,width: 24,height: 24,)
          ),
        ],
      ),
      body:
      
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            ProfileBox(),
            SizedBox(height: 16,),
            PostView()
          ],
        ),
      )
    );
  
  }
}