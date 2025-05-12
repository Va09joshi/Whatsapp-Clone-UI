import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Profile/ProfileScreen.dart';

import '../../Widgets/Uihelper.dart';

class Otpscreen extends StatelessWidget {

  String phonenumber;
  Otpscreen({required this.phonenumber});
  TextEditingController OTP1controller = TextEditingController();
  TextEditingController OTP2controller = TextEditingController();
  TextEditingController OTP3controller = TextEditingController();
  TextEditingController OTP4controller = TextEditingController();
  TextEditingController OTP5controller = TextEditingController();
  TextEditingController OTP6controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                child: uihelper().Customtext(
                    text: "Verifying your number",
                    height: 16,
                    fontweight: FontWeight.bold,
                    color: Color(0xff00A884)),
              ),
              SizedBox(
                height: 30,
              ),
              uihelper().Customtext(
                  text: "You’ve tried to register +91${phonenumber}"
                  , height: 12),
              uihelper().Customtext(
                  text: "recently. Wait before requesting an sms or a call.", height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  uihelper().Customtext(
                      text: " with your code.", height: 12),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: uihelper().Customtext(
                        text: " Wrong number?", height: 12, color: Color(0xff00A884)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  uihelper.customcontainer(OTP1controller),
                  SizedBox(width: 10),
                  uihelper.customcontainer(OTP2controller),
                  SizedBox(width: 10),
                  uihelper.customcontainer(OTP3controller),
                  SizedBox(width: 10),
                  uihelper.customcontainer(OTP4controller),
                  SizedBox(width: 10),
                  uihelper.customcontainer(OTP5controller),
                  SizedBox(width: 10),
                  uihelper.customcontainer(OTP6controller),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              uihelper().Customtext(text: "Didn’t receive code?", height: 12,color: Color(0xff00A884))

            ],
        ),
      ),
      floatingActionButton: uihelper().Custombutton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return Profilescreen();
        }));

      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
