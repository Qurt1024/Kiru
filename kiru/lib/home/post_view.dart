import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/images.dart';

class PostView extends StatelessWidget{
  const PostView({super.key});

static const List<String> images = [
  AppImages.postOne,
  AppImages.postTwo,
  AppImages.postThree,
  AppImages.postFour
];
Widget postGrid(String imageName){
  return Stack(
  children: [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(image: AssetImage(imageName),
        fit: BoxFit.cover,
        )
        
      ),
    ),
    Positioned(
      bottom: 8,
      right: 8,
      child: Container(
        padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.favorite_border,
            size: 20,
            color: Colors.black,
          ),
        ),
    )
  ],
  );
}
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 396,
      decoration: BoxDecoration(
      color: AppColors.textcolor,
      borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          SizedBox(
            height: 40,
            width: 332,
            child: FilledButton(onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColors.homeScreenButton),
              
            ),
             child: RichText(text: TextSpan(
              children: [
                WidgetSpan(child: Image.asset(AppImages.create,height: 21,width: 21,)),
                WidgetSpan(child: Padding(padding: EdgeInsets.symmetric(horizontal: 2))),
                TextSpan(text: 'Обупликовать',style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ))
              ],
             ))
             ),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
                padding: EdgeInsets.all(18),
              
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                ),
                itemCount: images.length, 
                itemBuilder: (context,index){
                  return postGrid(images[index]);
                }),
          )
        ],
      ),
    );
    
  }
}