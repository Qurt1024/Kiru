import 'package:flutter/material.dart';
import 'package:kiru/colors.dart';
import 'package:kiru/images.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.background,
    
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 12,
            children: [
              Image.asset(AppImages.appLogo,width: 68, height: 81,),
              Padding(
                padding: const EdgeInsets.only(bottom: 9),
                child: Text('Kiru',style: TextStyle(
                  color: AppColors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold
                ),),
              ),
             
            ],
          ),
           const SizedBox(height: 57,),
          ElevatedButton(onPressed: (){}, child: Text('Регистрация'), style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(AppColors.black)
          ),),
          const Spacer(flex: 3,),
        ],
      ),
    )
    );
  }
}
