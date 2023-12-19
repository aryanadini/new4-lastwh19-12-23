import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new4/calls.dart';
import 'package:new4/chat.dart';
import 'package:new4/group.dart';
import 'package:new4/update.dart';






class Whats extends StatefulWidget {
  const Whats({super.key});

  @override
  State<Whats> createState() => _WhatsState();
}

class _WhatsState extends State<Whats> {




List<Widget>Pages=[
  Group(),
  chatt(),
  Wtupdate(),
  call(),



];



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
initialIndex: 1,
      length: Pages.length,

      child: Scaffold(



        appBar: AppBar(title: Text("WhatsApp"
          , style: TextStyle(fontSize: 30),),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: ()
                {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            PopupMenuButton<dynamic>(
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text('new grp'),),
                PopupMenuItem(value: 2, child: Text('starred msg'))
              ],


              onSelected: (value) {
                switch (value) {
                  case 1:
                    print('get the app');
                    break;
                  case 2:
                    print('about');
                    break;
                }
              },
              offset: Offset(0, 100),
              color: Colors.grey,
              elevation: 2,
            )
          ],
          bottom: TabBar(tabs: [
            Tab(icon: IconButton(onPressed: (){}, icon: Icon(Icons.group)),),

                  Tab(text: "Chats",

                      ),
                  Tab(
                    text: "Updates",
                     ),
                  Tab(
                    text: "Calls",
                      ),

                      ]),


                               ),







        body:



       TabBarView(
              children: Pages,
          ),




        
      ),
    );
  }
}
