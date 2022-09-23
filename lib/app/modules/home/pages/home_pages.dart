import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reddit_feeling/app/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.bar_chart,
                    size: Get.mediaQuery.size.width * 0.8,
                    color: appThemeData.primaryColorLight.withOpacity(0.1),
                  ),
                ),
                Center(
                  child: Text(
                    'TICKER',
                    style: TextStyle(
                      fontSize: appThemeData.textTheme.titleLarge!.fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Card(
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
            ),
          ),
        ],
      ),
    );
  }
}
