import 'package:get/get.dart';
import 'package:reddit_feeling/app/modules/ticker/controllers/ticker_controllers.dart';

class TickerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TickerController());
  }
}