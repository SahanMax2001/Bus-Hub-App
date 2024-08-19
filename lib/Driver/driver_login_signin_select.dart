import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

//import '../LogIn_SignIn_Common/login_or_signin_common.dart';
import '../Common_Classes/login_or_signin_common.dart';
import '../constants/colors.dart';
import '../constants/image_strings.dart';
import 'driver_login.dart';
import 'driver_signin.dart';

class DriverSelect extends StatelessWidget {
  const DriverSelect({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor:bOnBoardingColor3,
      body: LogOrSign(
        tittle1:"SIGNIN",
        tittle2: "LOGIN",
        tittle3: "Hello Driver",
        userImagePath: DriverImage,
        onTap1: (){Get.to(()=> const driver_signin());},
        onTap2: (){Get.to(()=> const DriverLogin()); },

      ),
    );
  }
}