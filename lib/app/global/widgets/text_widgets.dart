import 'package:flutter/material.dart';
import 'package:reddit_feeling/app/theme/app_theme.dart';

class CustomTextGlobalWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;

  const CustomTextGlobalWidget({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? appThemeData.primaryColorLight,
        fontSize: fontSize,
      ),
    );
  }
}
