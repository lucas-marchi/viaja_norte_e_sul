import 'package:flutter/material.dart';
import 'package:viaja_norte_e_sul/misc/colors.dart';
import 'package:viaja_norte_e_sul/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({super.key, this.width=120, this.isResponsive=false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(margin: EdgeInsets.only(left: 20), child: AppText(text: "Agendar Viagem", color: Colors.white,)):Container(),
            Image.asset("img/button-one.png")
          ],
        ),
      ),
    );
  }
}