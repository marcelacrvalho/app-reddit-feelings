import 'package:flutter/material.dart';
import 'package:reddit_feeling/app/global/widgets/text_widgets.dart';
import 'package:reddit_feeling/app/modules/home/controllers/home_controllers.dart';
import '../../../theme/app_theme.dart';

class CustomDataGridView extends StatelessWidget {
  const CustomDataGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: HomeController.to.fetch(),
        builder: (context, snapshot) {
          return _switchSnapshot(snapshot);
        });
  }

  Widget _switchSnapshot(AsyncSnapshot snapshot) {
    switch (snapshot.connectionState) {
      case ConnectionState.done:
        return _gridViewStyle();
      default:
        return const Center(
          child: CircularProgressIndicator(),
        );
    }
  }

  Widget _gridViewStyle() {
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: HomeController.to.listData!.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 3.0,
          mainAxisSpacing: 3.0,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => HomeController.to.toTickerPage(
              HomeController.to.listData![index],
            ),
            child: Container(
              color: appThemeData.primaryColorLight.withOpacity(0.2),
              width: 100,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextGlobalWidget(
                    text: HomeController.to.listData![index].ticker!,
                    color: HomeController.to.listData?[index].sentiment ==
                            'Bullish'
                        ? HomeController.to.listColorsFeeling[0]
                        : HomeController.to.listColorsFeeling[1],
                    fontSize: appThemeData.textTheme.titleLarge!.fontSize!,
                  ),
                  CustomTextGlobalWidget(
                    text: HomeController.to.listData![index].sentiment!,
                    fontSize: appThemeData.textTheme.bodyMedium!.fontSize!,
                  ),
                ],
              ),
            ),
          );
        });
  }
}