import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reddit_feeling/app/data/models/data.dart';
import 'package:reddit_feeling/app/data/repositories/data_repositories.dart';
import 'package:reddit_feeling/app/routes/app_routes.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();
  List<Data>? listData;
  List<Color> listColorsFeeling = [Colors.green, Colors.red];
  late Data currentData;

  @override
  void onInit() async {
    await fetch();
    super.onInit();
  }

  Future fetch() async {
    List<Data>? response = await DataRepository.fetch();
    response != null ? listData = response : null;
  }

  toTickerPage(Data data) {
    currentData = data;
    Get.toNamed(Routes.kTicker, arguments: currentData);
  }
}