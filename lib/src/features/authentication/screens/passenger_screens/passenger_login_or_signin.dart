import 'package:bus_hub/src/constants/colors.dart';
import 'package:bus_hub/src/constants/image_strings.dart';
import 'package:bus_hub/src/constants/sizes.dart';
import 'package:bus_hub/src/constants/text_strings.dart';
import 'package:bus_hub/src/features/authentication/screens/passenger_screens/passenger_log_in_screen.dart';
import 'package:bus_hub/src/features/authentication/screens/passenger_screens/passenger_sing_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../login_signin_common/log_or_sign_common.dart';

class PassengerSelect extends StatelessWidget {
  const PassengerSelect({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor:bOnBoardingColor3,
      body: LogOrSign(
        tittle1:"SIGNIN",
        tittle2: "LOGIN",
        tittle3: "Hello Passenger",
        userImagePath: PassengerImage,
        onTap1: (){ Get.to(()=>const PassengerSingInScreen());},
        onTap2: (){ Get.to(()=>const PassengerLogInScreen());},

      ),
    );
  }
}

