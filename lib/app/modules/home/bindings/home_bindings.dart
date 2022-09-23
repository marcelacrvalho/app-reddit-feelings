import 'package:get/get.dart';
import 'package:reddit_feeling/app/modules/home/controllers/home_controllers.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}