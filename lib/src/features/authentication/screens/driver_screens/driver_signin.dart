import 'package:bus_hub/src/features/authentication/login_signin_common/signin_common.dart';
import 'package:bus_hub/src/features/authentication/screens/driver_screens/driver_registration_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class driver_signin extends StatelessWidget {
  const driver_signin({super.key});


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return signin_common(
      size: size,
      text1:("Drive with us and make every passenger's journey exceptional!"),
      onTap1: () {Get.to(() =>  const());},
      onTap2: () {
        Get.to(() =>  Bus_Registration(size: size));
      },
    );

  }
}
