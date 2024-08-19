import 'package:bus_hub/src/constants/colors.dart';
import 'package:bus_hub/src/constants/image_strings.dart';
import 'package:bus_hub/src/constants/sizes.dart';
import 'package:bus_hub/src/constants/text_strings.dart';
import 'package:bus_hub/src/features/authentication/screens/driver_screens/driver_login.dart';
import 'package:bus_hub/src/features/authentication/screens/driver_screens/driver_signin.dart';
import 'package:bus_hub/src/features/authentication/screens/passenger_screens/passenger_log_in_screen.dart';
import 'package:bus_hub/src/features/authentication/screens/passenger_screens/passenger_sing_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../login_signin_common/log_or_sign_common.dart';

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

