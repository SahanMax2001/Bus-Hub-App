import 'package:bus_hub_app/Role_Selection_Screen/selection_screen.dart';
import 'package:bus_hub_app/firebase_options.dart';
import 'package:bus_hub_app/on_boarding_screen/on_boarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        theme: ThemeData(brightness: Brightness.light),
        darkTheme: ThemeData(brightness: Brightness.dark),
        themeMode:  ThemeMode.system,
        home:  OnBoardingScreen(),
      ),
    );
  }
}