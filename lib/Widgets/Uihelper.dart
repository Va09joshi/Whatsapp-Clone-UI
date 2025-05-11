import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class uihelper{
   Custombutton({required VoidCallback callback, required String buttonname}){
     return SizedBox(
       height: 45,
       width: 350,
       child: ElevatedButton(onPressed: (){
         callback();
       },style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(40)
       )) ,child: Text(buttonname,style: TextStyle(fontSize: 14,color: Colors.white),)),
     );
  }


   Customtext({required String text, required double height, Color? color, FontWeight? fontweight}){
    return Text(text,style: TextStyle(fontSize: height,color: color?? Color(0xff5E5E5E), fontWeight: fontweight),);
  }

  static customcontainer(TextEditingController controller){
     return Container(
       width: 40,

       height: 40,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         color: Color(0xffD9D9D9)
       ),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(
           controller: controller,
           decoration: InputDecoration(
             border: InputBorder.none
           ),
         ),
       ),
     );
  }
}