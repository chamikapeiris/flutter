import 'package:flutter/material.dart';
import 'package:general/views/home_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:general/helpers/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'General',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomeScreen(),
      initialRoute: '/',
      getPages: buildRoutes,
    );
  }
}
