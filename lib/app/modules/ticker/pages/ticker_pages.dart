import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reddit_feeling/app/global/widgets/text_widgets.dart';
import 'package:reddit_feeling/app/modules/home/controllers/home_controllers.dart';
import 'package:reddit_feeling/app/theme/app_theme.dart';

class TickerPage extends StatelessWidget {
  const TickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              Center(
                child: Icon(
                  Icons.bar_chart,
                  size: Get.mediaQuery.size.width * 0.8,
                  color: appThemeData.primaryColorLight.withOpacity(0.05),
                ),
              ),
              Center(
                child: CustomTextGlobalWidget(
                  text: HomeController.to.currentData.ticker!,
                  fontSize: appThemeData.textTheme.titleLarge!.fontSize!,
                  color: HomeController.to.currentData.sentiment == 'Bullish'
                      ? HomeController.to.listColorsFeeling[0]
                      : HomeController.to.listColorsFeeling[1],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Card(
            color: appThemeData.primaryColorLight.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextGlobalWidget(
                    text: HomeController.to.currentData.sentiment!,
                    fontSize: appThemeData.textTheme.bodyMedium!.fontSize!,
                  ),
                  Container(
                    color: HomeController.to.currentData.sentiment == 'Bullish'
                        ? HomeController.to.listColorsFeeling[0]
                        : HomeController.to.listColorsFeeling[1],
                    width: Get.mediaQuery.size.width * 0.003,
                    height: Get.mediaQuery.size.height * 0.1,
                  ),
                  CustomTextGlobalWidget(
                    text:
                        '${HomeController.to.currentData.sentimentScore!.toString()}%',
                    fontSize: appThemeData.textTheme.bodyMedium!.fontSize!,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
