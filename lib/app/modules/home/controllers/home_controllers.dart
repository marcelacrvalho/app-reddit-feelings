import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reddit_feeling/app/data/models/data.dart';
import 'package:reddit_feeling/app/data/repositories/data_repositories.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();
  List<Data>? listData;
  RxBool isIconClicked = false.obs;
  List<Color> listColorsFeeling = [Colors.red, Colors.green];
  late int randomIndex;

  @override
  void onInit() {
    fetch();
    super.onInit();
  }

  Future fetch() async {
    List<Data>? response = await DataRepository.fetch();
    response != null ? listData = response : null;
    randomIndex = Random().nextInt(listData!.length);
  }
}