import 'package:get/get.dart';
import 'package:reddit_feeling/app/modules/home/bindings/home_bindings.dart';
import 'package:reddit_feeling/app/modules/home/pages/home_pages.dart';
import 'package:reddit_feeling/app/modules/ticker/bindings/ticker_bindings.dart';
import 'package:reddit_feeling/app/modules/ticker/pages/ticker_pages.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.kHome,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.kTicker,
      page: () => const TickerPage(),
      binding: TickerBinding(),
    ),
  ];
}