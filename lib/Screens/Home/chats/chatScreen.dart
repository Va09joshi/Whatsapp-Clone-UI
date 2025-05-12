import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/Uihelper.dart';

class Chatscreen extends StatelessWidget {
  Chatscreen({super.key});

  var arrcontent = [
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
      "name": "Vaibhav",
      "lastmsg": "what you are doing",
      "time": "05:30 AM",
      "msg": "6"
    },
    {
      "images":
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name": "Shapherd",
      "lastmsg": "hiii",
      "time": "05:46 AM",
      "msg": "3"
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEfZOQHseAcDN2GAeXIyjtvMi6yZEN7XrLHw&s",
      "name": "Amozen",
      "lastmsg": "Offer letter...",
      "time": "07:56 PM",
      "msg": "1"
    },
    {
      "images":
      "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
      "name": "Vaibhav",
      "lastmsg": "what you are doing",
      "time": "05:30 AM",
      "msg": "6"
    },
    {
      "images":
      "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name": "Shapherd",
      "lastmsg": "hiii",
      "time": "05:46 AM",
      "msg": "3"
    },
    {
      "images":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEfZOQHseAcDN2GAeXIyjtvMi6yZEN7XrLHw&s",
      "name": "Amozen",
      "lastmsg": "Offer letter...",
      "time": "07:56 PM",
      "msg": "1"
    },
    {
      "images":
      "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
      "name": "Vaibhav",
      "lastmsg": "what you are doing",
      "time": "05:30 AM",
      "msg": "6"
    },
    {
      "images":
      "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name": "Shapherd",
      "lastmsg": "hiii",
      "time": "05:46 AM",
      "msg": "3"
    },
    {
      "images":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEfZOQHseAcDN2GAeXIyjtvMi6yZEN7XrLHw&s",
      "name": "Amozen",
      "lastmsg": "Offer letter...",
      "time": "07:56 PM",
      "msg": "1"
    },
    {
      "images":
      "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
      "name": "Vaibhav",
      "lastmsg": "what you are doing",
      "time": "05:30 AM",
      "msg": "6"
    },
    {
      "images":
      "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name": "Shapherd",
      "lastmsg": "hiii",
      "time": "05:46 AM",
      "msg": "3"
    },
    {
      "images":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEfZOQHseAcDN2GAeXIyjtvMi6yZEN7XrLHw&s",
      "name": "Amozen",
      "lastmsg": "Offer letter...",
      "time": "07:56 PM",
      "msg": "1"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      NetworkImage(arrcontent[index]["images"].toString()),
                ),
                title: uihelper().Customtext(
                    text: arrcontent[index]["name"].toString(), height: 14, fontweight: FontWeight.bold),
                subtitle: uihelper().Customtext(
                    text: arrcontent[index]["lastmsg"].toString(),
                    height: 13,
                    color: Color(0xff889095)),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     uihelper().Customtext(text: arrcontent[index]["time"].toString(), height: 12,color: Color(0xff026500)),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Color(0xff036A01),
                      child: uihelper().Customtext(text: arrcontent[index]["msg"].toString(), height: 12,color: Colors.white),
                    )
                  ],
                ),
              );
            },itemCount: arrcontent.length,),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
        backgroundColor: Color(0xff008665),
      ),
    );
  }
}
