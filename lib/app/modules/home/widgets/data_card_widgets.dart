import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reddit_feeling/app/modules/home/controllers/home_controllers.dart';
import 'package:reddit_feeling/app/theme/app_theme.dart';

class CustomDataCard extends StatelessWidget {
  final int index;
  const CustomDataCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: Text(
                  HomeController.to.listData![index].ticker!,
                  style: TextStyle(
                    fontSize: appThemeData.textTheme.titleLarge!.fontSize,
                    fontWeight: FontWeight.bold,
                    color:
                    HomeController.to.listData?[index].sentiment == 'Bullish'
                        ? HomeController.to.listColorsFeeling[0]
                        : HomeController.to.listColorsFeeling[1],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: FutureBuilder(
          future: HomeController.to.fetch(),
          builder: (context, snapshot) {
            return _switchFutureBuilder(snapshot);
          },
        )),
      ],
    );
  }

  Widget _switchFutureBuilder(AsyncSnapshot snapshot) {
    switch (snapshot.connectionState) {
      case ConnectionState.done:
      case ConnectionState.active:
        return Card(
          color: appThemeData.primaryColorLight.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  HomeController.to.listData![index].sentiment!,
                  style: TextStyle(
                    fontSize: appThemeData.textTheme.bodyMedium!.fontSize,
                  ),
                ),
                Container(
                  color: HomeController.to.listData?[index].sentiment == 'Bullish'
                      ? HomeController.to.listColorsFeeling[0]
                      : HomeController.to.listColorsFeeling[1],
                  width: Get.mediaQuery.size.width * 0.003,
                  height: Get.mediaQuery.size.height * 0.1,
                ),
                Text(
                  HomeController.to.listData![index].sentimentScore!.toString(),
                  style: TextStyle(
                    fontSize: appThemeData.textTheme.bodyMedium!.fontSize,
                  ),
                ),
              ],
            ),
          ),
        );
      default:
        return const Center(
          child: CircularProgressIndicator(),
        );
    }
  }
}