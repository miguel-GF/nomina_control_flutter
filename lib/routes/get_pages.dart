import 'package:get/get.dart';

import '../screens/home_screen.dart';
import '../screens/splash_screen.dart';

class GetPages {
  List<GetPage<dynamic>> getPages = <GetPage<dynamic>>[
    GetPage<dynamic>(name: '/splash-screen', page: () => const SplashScreen()),
    GetPage<dynamic>(name: '/home-screen', page: () => const HomeScreen()),
  ];
}
