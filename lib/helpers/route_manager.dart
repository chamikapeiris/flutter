
import 'package:general/widgets/bottom_navigation_menu.dart';
import 'package:get/get.dart';

List<GetPage> buildRoutes = [
  GetPage(
    name: '/',
    page: () => BottomNavigationMenu(),
  ),
];
