import 'package:flutter/material.dart';
import 'package:reddit_feeling/app/theme/app_theme.dart';

class CustomDataCard extends StatelessWidget {
  const CustomDataCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: appThemeData.primaryColorDark.withOpacity(0.7),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'sentimento',
              style: TextStyle(
                fontSize: appThemeData.textTheme.bodyMedium!.fontSize,
              ),
            ),
            Text(
              'pontuação',
              style: TextStyle(
                fontSize: appThemeData.textTheme.bodyMedium!.fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
