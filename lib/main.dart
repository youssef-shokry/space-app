import 'package:flutter/material.dart';
import 'package:space_app/screens/home_screen.dart';
import 'package:space_app/screens/login_screen.dart';
import 'screens/planet_detailed_screen.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "loginScreen",
      routes: {
        "loginScreen": (_) => LoginScreen(),
        "homeScreen": (_) => HomeScreen(),
        "planetDetailedScreen": (_) => PlanetDetailed(),
      },
    ),
  );
}
