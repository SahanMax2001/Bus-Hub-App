import 'package:bus_hub/src/constants/colors.dart';
import 'package:bus_hub/src/constants/image_strings.dart';
import 'package:bus_hub/src/constants/sizes.dart';
import 'package:bus_hub/src/features/authentication/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
        backgroundColor:bOnBoardingColor3,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height:tDefaultSize*4,),
                Image(image:AssetImage(ForgetPasswordImage),height: size.height * 0.3),
                SizedBox(height: 30.0,),
                Text("Forget Password?",style: TextStyle(fontSize:24,fontWeight: FontWeight.w900),),
                Text("Select one of the option given below to rest your password",style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,),textAlign: TextAlign.center,),

                SizedBox(height:30,),
                Form(child: Column(children: [

                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Phone Number"),hintText: "Enter Your Phone Number",
                      prefixIcon: Icon(Icons.phone_android),
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 20.0,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(()=>const OtpScreen());
                      },
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(),
                          backgroundColor: tPrimaryColor,
                          foregroundColor: Colors.white,
                          side: BorderSide(
                              color: Colors.black87, width: 2),
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 50)),
                      child: Text("Next"),
                    ),
                  ),

                ],))

              ],
            ),
          ),
        ),

      ),
    );
  }
}
