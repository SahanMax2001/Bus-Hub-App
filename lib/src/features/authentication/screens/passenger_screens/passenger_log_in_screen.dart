import 'package:bus_hub/src/constants/colors.dart';
import 'package:bus_hub/src/constants/image_strings.dart';
import 'package:bus_hub/src/constants/sizes.dart';
import 'package:bus_hub/src/features/authentication/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:bus_hub/src/features/authentication/screens/passenger_screens/passenger_sing_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../forget_password/forget_password_options/forget_password_btn_widget.dart';

class PassengerLogInScreen extends StatelessWidget {
  const PassengerLogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image(
                        image: AssetImage(AppLogoImage),
                        height: size.height * 0.2),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: tPrimaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_outlined),
                              labelText: "email",
                              hintText: "Enter Your Email in Here",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.fingerprint_rounded),
                                labelText: "password",
                                hintText: "Enter Your Password in Here",
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.remove_red_eye_sharp),
                                )),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                 ForgetPasswordScreen.BuildShowModalBottomSheet(context);
                                },
                                child: Text(
                                  "Forget Password?",
                                ),
                              )),
                          SizedBox(
                            height: 23,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(),
                                  backgroundColor: Colors.black87,
                                  foregroundColor: Colors.white,
                                  side: BorderSide(
                                      color: Colors.black87, width: 2),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 50)),
                              child: Text("LOGIN"),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text("OR", style: TextStyle(fontSize: 13)),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton.icon(
                              icon: Image(
                                image: AssetImage(GoogleLogo),
                                width: 20,
                              ),
                              onPressed: () =>
                                  Get.to((const PassengerSingInScreen())),
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(),
                                  foregroundColor: Colors.black54,
                                  side:
                                  BorderSide(color: Colors.black87, width: 0.7),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 50)),
                              label: Text("Sing_In with Google",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700)),
                            ),
                          ),
                          TextButton(
                            onPressed: () =>
                                Get.to((const PassengerSingInScreen())),
                            child: const Text.rich(TextSpan(
                                text: "Don't have an Account?",
                                style: TextStyle(color: Colors.black87),
                                children: [
                                  TextSpan(
                                      text: " SingUp",
                                      style: TextStyle(color: Colors.blue)),
                                ])),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}


