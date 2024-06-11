import 'package:bus_hub/src/constants/colors.dart';
import 'package:bus_hub/src/constants/image_strings.dart';
import 'package:bus_hub/src/constants/sizes.dart';
import 'package:bus_hub/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../driver_screens/driver_login_signin.dart';
import '../passenger_screens/login_or_signin.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(WelcomeTittle,
                  style: TextStyle(fontSize: 23,fontWeight:FontWeight.w900,),),
                const Text(WelcomeSubTittle,
                    style: TextStyle(fontSize: 16,fontWeight:FontWeight.w700,)),
              ],
            ),

            const Image(image:AssetImage(PassengerImage),
                height:200, // Set the desired height
                fit: BoxFit.contain),
          ElevatedButton(
            onPressed: ()=>Get.to(( )=>const PassengerSelect()),

            style: OutlinedButton.styleFrom(
              backgroundColor: tPrimaryColor,
              foregroundColor:Colors.white,
            ),
            child:Text("I am Passenger"),),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(height: 2,width:130,color: Colors.grey),
                SizedBox(width: 10,),
                Text("or"),
                SizedBox(width:10,),
                Container(height: 2,width:130,color: Colors.grey),
              ],
            ),
          ),
            const Image(image: AssetImage(DriverImage),
                height:200, // Set the desired height
                fit: BoxFit.contain),
            ElevatedButton(onPressed: ()=>Get.to(( )=>const DriverSelect()),

              style: OutlinedButton.styleFrom(
                backgroundColor: tPrimaryColor,
                foregroundColor:Colors.white, ),
                child:Text("I am Driver"),),

          ],
        ),
      ),
    );
  }
}
