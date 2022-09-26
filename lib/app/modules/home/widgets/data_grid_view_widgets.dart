import 'package:flutter/material.dart';
import '../../../theme/app_theme.dart';

class CustomDataGridView extends StatelessWidget {
  const CustomDataGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 3.0,
          mainAxisSpacing: 3.0
      ),
      children: [
        Container(
            color: appThemeData.primaryColorLight.withOpacity(0.2),
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TICKER',
                  style: TextStyle(
                    color: appThemeData.primaryColorDark,
                    fontSize: appThemeData.textTheme.titleLarge?.fontSize,
                  ),
                ),
                Text(
                  'Sentimento',
                  style: TextStyle(
                    color: appThemeData.primaryColorDark,
                    fontSize: appThemeData.textTheme.bodyMedium?.fontSize,
                  ),
                )
              ],
            )
        ),
      ],
    );
  }
}
