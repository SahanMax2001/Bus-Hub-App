import 'package:bus_hub/src/features/authentication/login_signin_common/login_common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DriverLogin extends StatelessWidget {
  const DriverLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return common_login(size: size,

        OnTap1:(){Get.to(()=> const ());},
         OnTap2: (){Get.to(()=> const ());},);
  }
}
