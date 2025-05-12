import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/Screens/Home/HomeScreen.dart';
import 'package:whatsapp_clone/Widgets/Uihelper.dart';

class Profilescreen extends StatefulWidget {
   Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  TextEditingController namecontroller = TextEditingController();

  File? pickimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            uihelper().Customtext(
                text: "Profile info",
                height: 16,
                color: Color(0xff00A884),
                fontweight: FontWeight.bold),
            SizedBox(
              height: 30,
            ),
            uihelper().Customtext(
                text: "Please provide your name and an optional", height: 13),
            uihelper().Customtext(text: "profile photo", height: 13),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                _openbottom(context);
              },
              child: pickimage==null? CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xffD9D9D9),
                child: Image.asset(
                  "assets/images/photo-camera 1.png",
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ): CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickimage!),
              ),
            ),
            SizedBox(
              height: 30,
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SizedBox(
                 width: 300,
                 child: TextField(
                   keyboardType: TextInputType.name,
                   controller: namecontroller,
                   decoration: InputDecoration(
                       hintText: "Type your name here",
                       hintStyle: TextStyle(color: Color(0xff5E5E5E)),
                       border: UnderlineInputBorder(
                           borderSide: BorderSide(color: Color(0xff05AA82))
                       ),
                       enabledBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Color(0xff05AA82))
                       ),
                       focusedBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Color(0xff05AA82))
                       )

                   ),
                 ),
               ),
               SizedBox(
                 width: 10,
               ),
               Image.asset("assets/images/smile.png")
             ],
           )
          ],
        ),
      ),
      floatingActionButton: uihelper().Custombutton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
           return Homescreen();
        }));

      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openbottom(BuildContext context){
    return showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 200,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            uihelper().Customtext(text: "Pick a image", height: 20,color: Color(0xff00A884),fontweight: FontWeight.bold),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                IconButton(onPressed: (){
                     _pickimage(ImageSource.camera);
                }, icon: Icon(Icons.camera,color: Colors.green,size: 50,)),
                IconButton(onPressed: (){
                  _pickimage(ImageSource.gallery);
                }, icon: Icon(Icons.image,color: Colors.red,size: 50,)),
              ],
            )
          ],
        ),
      );
    });
  }

  _pickimage(ImageSource imagesource) async{
        try{
          final photo = await ImagePicker().pickImage(source: imagesource);
          if(photo==null)
            return;
            final tempimage = File(photo.path);
            setState(() {
              pickimage = tempimage;
            });

        }catch(ex){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.toString()),backgroundColor: Color(0xff00A884),));
        }
  }
}
