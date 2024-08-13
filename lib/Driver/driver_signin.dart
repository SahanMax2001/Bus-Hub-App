import 'package:bus_hub_app/Driver/driver_login.dart';
import 'package:bus_hub_app/Driver/driver_registration_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../LogIn_SignIn_Common/signin_common.dart';

class driver_signin extends StatelessWidget {
  const driver_signin({super.key});


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return signin_common(
      size: size,
      text1:("Drive with us and make every passenger's journey exceptional!"),
      onTap1: () {Get.to(() =>  const DriverLogin());},
      onTap2: () {
        Get.to(() =>  Bus_Registration_form(size: size));
      },
    );

  }
}