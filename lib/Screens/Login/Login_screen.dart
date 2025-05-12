import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/OTP/OTPscreen.dart';
import 'package:whatsapp_clone/Widgets/Uihelper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

 TextEditingController phonecontroller = TextEditingController();

  String selectedcountry = 'India';
  List<String> countries = [
    "America",
    "Africa",
    "India",
    "Russia",
    "Italy",
    "Germany"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: uihelper().Customtext(
                text: "Enter your phone number",
                height: 16,
                fontweight: FontWeight.bold,
                color: Color(0xff00A884)),
          ),
          SizedBox(
            height: 30,
          ),
          uihelper().Customtext(
              text: "WhatsApp will need to verify your phone", height: 12),
          uihelper().Customtext(
              text: "number. Carrier charges may apply.", height: 12),
          uihelper().Customtext(
              text: "What’s my number?", height: 12, color: Color(0xff00A884)),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(
              items: countries.map((String country) {
                return DropdownMenuItem(
                  child: Text(country.toString()),
                  value: country,
                );
              }).toList(),
              onChanged: (newvalue) {
                setState(() {
                  selectedcountry = newvalue!;
                });
              },
              value: selectedcountry,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00A884))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00A884)))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "+91",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00A884)),
                        ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884))
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00A884))
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              SizedBox(
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: phonecontroller,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00A884))
                    )
                  ),
                ),
              )
            ],

          ),

        ],

      ),floatingActionButton: uihelper().Custombutton(callback: (){
          login(phonecontroller.text.toString());

    }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }

  login(String Phonenumber){
    if(Phonenumber==""){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Phone Number!!")));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return Otpscreen(phonenumber: Phonenumber,);
      }));
    }
  }
}
