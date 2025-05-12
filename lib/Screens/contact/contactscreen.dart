import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/Uihelper.dart';

class Contactscreen extends StatelessWidget {
   Contactscreen({super.key});

   var contactcontent = [
     {
       "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCp_ByMCZW8m0s3KmAbIENDvR2Zc_HkBJyYw&s",
        "name" :"Vaibhav",
       "status": "Busy"
     },
     {
       "img" :"https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?cs=srgb&dl=pexels-justin-shaifer-501272-1222271.jpg&fm=jpg",
       "name" :"Sam",
       "status": "Cool"
     },
     {
       "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHTchaar1xpqF3i6LnphMI8VNgw_hbx1As2A&s",
       "name" :"jeff",
       "status": "Online"
     },
     {
       "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT8Dp4nSW8YJhicTMZ8p1h97EkFw8DCNhDnw&s",
       "name" :"Elon Musk",
       "status": "Cool"
     },
     {
       "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCp_ByMCZW8m0s3KmAbIENDvR2Zc_HkBJyYw&s",
       "name" :"Vaibhav",
       "status": "Busy"
     },
     {
       "img" :"https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?cs=srgb&dl=pexels-justin-shaifer-501272-1222271.jpg&fm=jpg",
       "name" :"Sam",
       "status": "Cool"
     },
     {
       "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHTchaar1xpqF3i6LnphMI8VNgw_hbx1As2A&s",
       "name" :"jeff",
       "status": "Online"
     },
     {
       "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT8Dp4nSW8YJhicTMZ8p1h97EkFw8DCNhDnw&s",
       "name" :"Elon Musk",
       "status": "Cool"
     },
     {
       "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCp_ByMCZW8m0s3KmAbIENDvR2Zc_HkBJyYw&s",
       "name" :"Vaibhav",
       "status": "Busy"
     },
     {
       "img" :"https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?cs=srgb&dl=pexels-justin-shaifer-501272-1222271.jpg&fm=jpg",
       "name" :"Sam",
       "status": "Cool"
     },
     {
       "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHTchaar1xpqF3i6LnphMI8VNgw_hbx1As2A&s",
       "name" :"jeff",
       "status": "Online"
     },
     {
       "img" :"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT8Dp4nSW8YJhicTMZ8p1h97EkFw8DCNhDnw&s",
       "name" :"Elon Musk",
       "status": "Cool"
     }
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: uihelper().Customtext(text: "Select Contact", height: 15,color: Colors.white),
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.search)),
         IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
       ],

       ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(contactcontent[index]["img"].toString()),
            ),
            title: uihelper().Customtext(text: contactcontent[index]['name'].toString(), height: 15,fontweight: FontWeight.bold),
            subtitle: uihelper().Customtext(text: contactcontent[index]["status"].toString(), height: 13),

          );
        },itemCount: contactcontent.length,),
      ),
    );
  }
}
