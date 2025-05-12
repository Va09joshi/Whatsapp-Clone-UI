import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/Uihelper.dart';

class Callsscreen extends StatelessWidget {
  Callsscreen({super.key});

  var callcontent = [
    {
       "name": "shinu",
      "img" :"https://www.mnp.ca/-/media/foundation/integrations/personnel/2020/12/16/13/57/personnel-image-4483.jpg?h=800&iar=0&w=600&hash=833D605FDB6AC3C2D2915F6BF8B4ADA4",
      "calltime" : "23 min ago"
    },
    {
      "name": "Jio",
      "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDFEPgAIXA0-oJhhCnA8SLtiiggUpOOSPn_w&s",
      "calltime" : "1 hrs ago"
    },
    {
      "name": "vaibhav",
      "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMUDp3aV5EOTHgkQp6AB782rSKOyhhkdkx8Q&s",
      "calltime" : "1 day ago"
    },
    {
      "name": "shinu",
      "img" :"https://www.mnp.ca/-/media/foundation/integrations/personnel/2020/12/16/13/57/personnel-image-4483.jpg?h=800&iar=0&w=600&hash=833D605FDB6AC3C2D2915F6BF8B4ADA4",
      "calltime" : "23 min ago"
    },
    {
      "name": "Jio",
      "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDFEPgAIXA0-oJhhCnA8SLtiiggUpOOSPn_w&s",
      "calltime" : "1 hrs ago"
    },
    {
      "name": "vaibhav",
      "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMUDp3aV5EOTHgkQp6AB782rSKOyhhkdkx8Q&s",
      "calltime" : "1 day ago"
    },
    {
      "name": "shinu",
      "img" :"https://www.mnp.ca/-/media/foundation/integrations/personnel/2020/12/16/13/57/personnel-image-4483.jpg?h=800&iar=0&w=600&hash=833D605FDB6AC3C2D2915F6BF8B4ADA4",
      "calltime" : "23 min ago"
    },
    {
      "name": "Jio",
      "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDFEPgAIXA0-oJhhCnA8SLtiiggUpOOSPn_w&s",
      "calltime" : "1 hrs ago"
    },
    {
      "name": "vaibhav",
      "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMUDp3aV5EOTHgkQp6AB782rSKOyhhkdkx8Q&s",
      "calltime" : "1 day ago"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         SizedBox(
           height: 20,
         ),
         Padding(
           padding: const EdgeInsets.only(left: 25,bottom: 10),
           child: Row(
             children: [
               SizedBox(height: 20,),
               uihelper().Customtext(text: "Recent", height: 16,fontweight: FontWeight.bold),

             ],
           ),
         ),
         Expanded(
           child: ListView.builder(itemBuilder: (context,index){
             return ListTile(
               leading: CircleAvatar(
                 radius: 30,
                 backgroundImage: NetworkImage(callcontent[index]["img"].toString()),

               ),
               title: uihelper().Customtext(text: callcontent[index]["name"].toString(), height: 18,fontweight: FontWeight.bold),
               subtitle: uihelper().Customtext(text: callcontent[index]["calltime"].toString(), height: 13),
               trailing: IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Color(0xff036A01),)),
             );
           },itemCount: callcontent.length,),
         )

       ],
     ),
    );
  }
}
