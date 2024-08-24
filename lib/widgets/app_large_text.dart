import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  int size;
  final String text;
  final Color color;
  AppLargeText({super.key, 
    
    required this.text, 
    required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text
    );
  }
}