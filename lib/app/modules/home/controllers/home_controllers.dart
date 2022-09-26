import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reddit_feeling/app/data/models/data.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();
  RxList data = [].obs;
  RxBool isIconClicked = false.obs;
  List<Color> colorsFeeling = [Colors.red, Colors.green];

}