import 'package:general/views/home_screen.dart';
import 'package:get/get.dart';

List<GetPage> buildRoutes = [
  GetPage(
    name: '/',
    page: () => HomeScreen(),
  ),
];
