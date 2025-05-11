import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Login/Login_screen.dart';
import 'package:whatsapp_clone/Widgets/Uihelper.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Image.asset("assets/images/boarding.png"),
               SizedBox(
                 height: 20,
               ),
             uihelper().Customtext(text: "Welcome to WhatsApp", height: 20,color: Color(0xff000000)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uihelper().Customtext(text: "Read out", height: 14),
                uihelper().Customtext(text: " Privacy Policy. ", height: 14,color: Color(0xff0C42CC)),

                uihelper().Customtext(text: "Tap “Agree and continue” ", height: 14),

              ],

            ),
            SizedBox(
              height: 5,
            ), Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uihelper().Customtext(text: " to accept the", height: 14),
                uihelper().Customtext(text: " Teams of Service. ", height: 14,color: Color(0xff0C42CC)),
              ],
            )
          ],
        ),
      ),
      
      floatingActionButton: uihelper().Custombutton(callback: (){
         Navigator.push(context, MaterialPageRoute(builder: (context){
           return LoginScreen();
         }));
      }, buttonname: "Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
