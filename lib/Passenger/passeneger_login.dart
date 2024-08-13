import 'package:bus_hub_app/Passenger/passenger_signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../LogIn_SignIn_Common/login_common.dart';

class PassengerLogInScreen extends StatelessWidget {
  const PassengerLogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return common_login(size: size,
      OnTap1: (){Get.to(()=> const PassengerSingInScreen());},
      OnTap2: (){Get.to(()=> const ());},

    );

  }
}