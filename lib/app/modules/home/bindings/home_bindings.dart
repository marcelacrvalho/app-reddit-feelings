import 'package:get/get.dart';
import 'package:reddit_feeling/app/data/repositories/data_repositories.dart';
import 'package:reddit_feeling/app/modules/home/controllers/home_controllers.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => DataRepository());
  }
}