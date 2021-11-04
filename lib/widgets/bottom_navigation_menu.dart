import 'package:flutter/material.dart';
import 'package:general/controllers/bottom_navigation_controller.dart';
import 'package:general/views/home_screen.dart';
import 'package:general/views/settings_screen.dart';
import 'package:get/get.dart';

import '../constants.dart';

class BottomNavigationMenu extends StatelessWidget {


  final bottomNavigationController = Get.put(BottomNavigationController());

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => _widgetOptions
            .elementAt(bottomNavigationController.selectedIndex.value),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded),
              label: 'Settings',
            ),
          ],
          currentIndex: bottomNavigationController.selectedIndex.value,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) {
            bottomNavigationController.selectedIndex.value = index;
          },
        ),
      ),
    );
  }
}
