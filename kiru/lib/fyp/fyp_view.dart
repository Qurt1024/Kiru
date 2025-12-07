import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/images.dart';

class FypView extends StatelessWidget {
  const FypView({super.key});

  static const List<Map<String, dynamic>> images = [
    {
      'image': AppImages.fypOne,
      'height': 280.0,
      'title': 'Звезда Токио',
      'subtitle': 'от HummusChan19',
      'verified': true
    },
    {
      'image': AppImages.fypTwo,
      'height': 280.0,
      'title': 'Private Zone',
      'subtitle': 'от StellaBloom',
      'verified': true
    },
    {
      'image': AppImages.fypThree,
      'height': 280.0,
      'title': 'Уличная мода',
      'subtitle': 'от Fashionmaster2012',
      'verified': false
    },
    {
      'image': AppImages.fypFour,
      'height': 280.0,
      'title': 'Темный стиль',
      'subtitle': 'от Xxx_StyleMaster_xxX',
      'verified': false
    },
  ];

  Widget postGrid(String imageName, double height, String title, String subtitle, bool verified) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  image: AssetImage(imageName),
                  fit: BoxFit.cover,
                ),
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
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black
                        ),
                      ),
                      if (verified) ...[
                        SizedBox(width: 4),
                        Image.asset(AppImages.verified,height: 10,width: 10,)
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 345,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: MasonryGridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.all(18),
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          itemCount: images.length,
          itemBuilder: (context, index) {
            final item = images[index];
            return postGrid(
              item['image'],
              item['height'],
              item['title'],
              item['subtitle'],
              item['verified'],
            );
          },
        ),
      ),
    );
  }
}