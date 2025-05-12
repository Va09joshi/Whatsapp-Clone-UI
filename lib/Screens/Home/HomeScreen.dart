import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/Calls/callsScreen.dart';
import 'package:whatsapp_clone/Screens/Home/camera/cameraScreen.dart';
import 'package:whatsapp_clone/Screens/Home/chats/chatScreen.dart';
import 'package:whatsapp_clone/Screens/Home/status/StatusScreen.dart';
import 'package:whatsapp_clone/Widgets/Uihelper.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt_rounded),),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",)
          ],indicatorColor: Colors.white,),
          toolbarHeight: 80,
          title: uihelper().Customtext(
              text: "WhatsApp",
              height: 16,
              color: Colors.white,
              fontweight: FontWeight.bold),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 25,)),
            )
          ],
        ),

        body: TabBarView(children: [

          Camerascreen(),
          Chatscreen(),
          Statusscreen(),
          Callsscreen()
                  ]),
      ),
    );
  }
}
