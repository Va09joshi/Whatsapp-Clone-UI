import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/onboarding_page.dart';
import 'package:whatsapp_clone/Widgets/Uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
           return OnboardingPage();
       }));

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp 1.png"),
            SizedBox(
              height: 20,
            ),
            uihelper().Customtext(text: "WhatsApp", height: 18, fontweight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
