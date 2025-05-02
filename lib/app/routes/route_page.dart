import 'package:get/get.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/app/modules/detail/detail_page.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/app/modules/home/home_page.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/app/modules/splash/splash_page.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/app/routes/route_name.dart';

class RoutePage {
  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: RouteName.splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.detail,
      page: () => DetailPage(),
    ),
  ];
}
