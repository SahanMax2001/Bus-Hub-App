import 'package:bus_hub/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:bus_hub/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashScreenController extends GetxController{

  static SplashScreenController get find => Get.find();


  RxBool animate  = false.obs;

  Future startAnimation() async{
    await Future.delayed(const Duration(milliseconds: 5000));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to( OnBoardingScreen());
    //Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>WelcomeScreen(),),);
  }
}