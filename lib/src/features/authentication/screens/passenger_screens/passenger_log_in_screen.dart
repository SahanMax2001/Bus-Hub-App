import 'package:bus_hub/src/constants/colors.dart';
import 'package:bus_hub/src/constants/image_strings.dart';
import 'package:bus_hub/src/constants/sizes.dart';
import 'package:bus_hub/src/features/authentication/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:bus_hub/src/features/authentication/screens/passenger_screens/passenger_sing_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../forget_password/forget_password_options/forget_password_btn_widget.dart';
import '../../login_signin_common/login_common.dart';

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

