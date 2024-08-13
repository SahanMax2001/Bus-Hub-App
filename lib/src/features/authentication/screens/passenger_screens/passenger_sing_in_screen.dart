import 'package:bus_hub/src/constants/sizes.dart';
import 'package:bus_hub/src/features/authentication/screens/passenger_screens/passenger_log_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../login_signin_common/signin_common.dart';

class PassengerSingInScreen extends StatelessWidget {
  const PassengerSingInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return signin_common(
      onTap1: (){ Get.to(()=>const PassengerLogInScreen());},
      onTap2: (){},
      size: size,
      text1: ("Create Your Profile to Start Your Journey"),
    );
  }
}

