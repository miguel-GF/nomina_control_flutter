import 'package:get/get.dart';

import '../screens/home_screen.dart';
import '../screens/nominas_screen.dart';
import '../screens/operadores_screen.dart';
import '../screens/pagos_screen.dart';
import '../screens/splash_screen.dart';
import 'name_pages.dart';

class GetPages {
  List<GetPage<dynamic>> getPages = <GetPage<dynamic>>[
    GetPage<dynamic>(name: nameSplashScreen, page: () => const SplashScreen()),
    GetPage<dynamic>(name: nameHomeScreen, page: () => const HomeScreen()),
    GetPage<dynamic>(
        name: nameNominasScreen, page: () => const NominasScreen()),
    GetPage<dynamic>(
        name: nameOperadoresScreen, page: () => const OperadoresScreen()),
    GetPage<dynamic>(name: namePagosScreen, page: () => const PagosScreen()),
  ];
}
