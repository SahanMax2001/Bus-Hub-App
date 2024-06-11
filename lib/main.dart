import 'package:bus_hub/src/features/authentication/screens/passenger_screens/passenger_log_in_screen.dart';
import 'package:bus_hub/src/features/authentication/screens/passenger_screens/passenger_sing_in_screen.dart';
import 'package:bus_hub/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:bus_hub/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp (
        debugShowCheckedModeBanner: false,
        title: "BusHub",
        theme: TAppTheme.LightTheme,
        darkTheme: TAppTheme.DarkTheme,
        themeMode: ThemeMode.system,
        home:  SplashScreen(),
      ),
    );
  }
}

