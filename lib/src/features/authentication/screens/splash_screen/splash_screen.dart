import 'package:bus_hub/src/constants/colors.dart';
import 'package:bus_hub/src/constants/image_strings.dart';
import 'package:bus_hub/src/constants/sizes.dart';
import 'package:bus_hub/src/constants/text_strings.dart';
import 'package:bus_hub/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:bus_hub/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put( SplashScreenController());


  @override
  Widget build(BuildContext context) {

    splashController.startAnimation();
    return  Scaffold(

      body: SafeArea(
        child: Stack(
          children: [
            Obx( () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),

                  top: splashController.animate.value ? -50: -200,
                  left: splashController.animate.value  ? -20: -30,
                    child:  Image(
                      image: AssetImage(AppLogoImage,),
                      fit: BoxFit.contain,height: 200,
                    ),
                    ),
            ),


            Obx(() => AnimatedPositioned(
                    duration: const Duration(milliseconds: 1600),
                  top: 100,
                  left: splashController.animate.value ? tDefaultSize: -80,
                  child:  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: splashController.animate.value ? 1 :0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tAppName,
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500), // Set font size for tAppName
                        ),
                        Text(
                          tAppTagLine,
                          style: TextStyle(fontSize: 18,fontWeight:FontWeight.w900), // Set font size for tAppTagLine
                        ),
                        //Text(tAppName,style: Theme.of(context).textTheme.headlineLarge,),
                        //Text(tAppTagLine,style: Theme.of(context).textTheme.headlineMedium),

                      ],
                    ),
                  )
                ),
              ),

            Obx(()=>AnimatedPositioned(
                duration: const Duration(milliseconds: 2400),
                bottom:splashController.animate.value ?100:0,
                left: 15,
                child:  AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: splashController.animate.value ? 1 :0,

                  child: Image(
                    image: AssetImage(tSplashImage),
                    fit: BoxFit.contain,height: 400,
                  ),
                ),
              ),
            ),

            // AnimatedPositioned(
            //   duration: const Duration(milliseconds: 2400),
            //   bottom: animate? 40:0,
            //   left: animate? 350:450,
            //   child: AnimatedOpacity(
            //     duration: const Duration(milliseconds: 2000),
            //     opacity: animate? 1 :0,
            //
            //     child: Container(
            //       width: tSplashContainerSize+5,
            //       height: tSplashContainerSize+5,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(100),
            //         color: tPrimaryColor,
            //
            //       ),
            //     ),
            //   ),
            // ),

          ],
        ),
      ),
    );
  }

}
