import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/Uihelper.dart';

class Statusscreen extends StatelessWidget {
   Statusscreen({super.key});

   var statuscontent = [
     {
       "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm_szPAEWXoreCbz4ydj-0d-vaHH35vcnBpQ&s",
        "name" : "rishu",
        "statustime" : "15 min ago"
     },
     {
       "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJh7xOgmeE0q7macw43RdnKzbDaMAZ6SFAAA&s",
       "name" : "george",
       "statustime" : "5 min ago"
     },
     {
       "img" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3m972e8FEvBi7ETC03avlJcZDg8nT9dWLSw&s",
       "name" : "Shanty",
       "statustime" : "1 day ago"
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
            padding: const EdgeInsets.only(left: 14),
            child: Row(

              children: [
                uihelper().Customtext(text: "Status", height: 15)
              ],
            ),
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Stack(
                children:[ CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/009/292/244/non_2x/default-avatar-icon-of-social-media-user-vector.jpg"),
                ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff008069),
                        radius: 10,
                        child: Center(child: Icon(Icons.add,color: Color(0xffffffff),size: 20,))),
                  )
              ]
              ),
            ),
            title: uihelper().Customtext(text: "My Status", height: 16),
            subtitle: uihelper().Customtext(text: "Tap to add status update", height: 13),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                uihelper().Customtext(text: "Recent updates", height: 13),
                Icon(Icons.arrow_drop_down,color: Color(0xff008069),)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(statuscontent[index]["img"].toString()),

                ),
                title: uihelper().Customtext(text: statuscontent[index]["name"].toString(), height: 15,fontweight: FontWeight.bold),
                subtitle: uihelper().Customtext(text: statuscontent[index]["statustime"].toString(), height: 12),

              );
            },itemCount: statuscontent.length,),
          )

        ],
      ),
    );
  }
}

