import 'package:flutter/material.dart';
import 'package:viaja_norte_e_sul/misc/colors.dart';
import 'package:viaja_norte_e_sul/widgets/app_large_text.dart';
import 'package:viaja_norte_e_sul/widgets/app_text.dart';
import 'package:viaja_norte_e_sul/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  List images = [
    "welcome-one.jpg",
    "welcome-two.jpg",
    "welcome-three.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/"+images[index]
                  ),
                fit: BoxFit.cover
              )
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Descubra"),
                      AppText(text: "o Brasil", size: 30,),
                      SizedBox(height: 20,),
                      Container(
                        width: 250,
                        child: AppText(
                          text: "O Rio de Janeiro está pronto para te mostrar o verdadeiro significado de cidade maravilhosa",
                          color: AppColors.textColor2,
                          size: 14,
                          ),
                      ),
                      SizedBox(height: 40,),
                      ResponsiveButton(width: 120,)
                    ],
                  )
                ],),
            ),
          );
      }),
    );
  }
}