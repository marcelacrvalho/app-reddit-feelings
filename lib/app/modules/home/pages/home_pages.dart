import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reddit_feeling/app/modules/home/controllers/home_controllers.dart';
import 'package:reddit_feeling/app/modules/home/controllers/home_controllers.dart';
import 'package:reddit_feeling/app/modules/home/widgets/data_grid_view_widgets.dart';
import 'package:reddit_feeling/app/theme/app_theme.dart';
import '../widgets/data_card_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => HomeController.to.isIconClicked.value = !HomeController.to.isIconClicked.value,
          child: Icon(
            Icons.grid_view,
            size: 25.0,
            color: appThemeData.primaryColorLight,
          ),
        ),
        elevation: 0.0,
        backgroundColor: appThemeData.primaryColorDark,
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Obx(
          () => !HomeController.to.isIconClicked.value ?
          Column(
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
              ), const Expanded(child: CustomDataCard())
            ],
          ) : const Padding(
            padding: EdgeInsets.all(3.0),
            child: CustomDataGridView(),
          ),
      ),
    );
  }
}
