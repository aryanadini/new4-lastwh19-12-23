import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new4/allinbox.dart';
import 'package:new4/primary.dart';
import 'package:new4/promotion.dart';
import 'package:new4/social.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});


  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
List<Widget>pages=[
  Allinbox(),
  Primary(),
  Promotion(),
  Social(),
];
int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(



      ),

      body:pages[currentPage],




      drawer: Drawer(
        child: ListView(
          children: [
DrawerHeader(decoration: BoxDecoration(
  color: Colors.white,

),

    child: Text("Gmail",style: TextStyle(color: Colors.red,fontSize: 20),)),


            
            ListTile(
              leading: Icon(Icons.all_inbox),
              title: Text("All inboxes"),
              onTap: (){
                setState(() {
currentPage=0;
Navigator.pop(context);
                });

              },
            ),
            ListTile(
              leading: Icon(Icons.stay_primary_portrait),
              title: Text("Primary"),
              onTap: (){
                setState(() {
                  currentPage=2;
                  Navigator.pop(context);
                });

              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text("Promotion"),
              onTap: (){
          setState((

              ) {currentPage=3;
          Navigator.pop(context);
            });
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Social"),
              onTap: (){
                setState(() {

                });
              },
            ),
            Title(color:Colors.white, child: Text("All labels")),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Starred"),
              onTap: (){
                setState(() {

                });
              },
            ),
            ListTile(
              leading: Icon(Icons.snooze),
              title: Text("Snoozed"),
              onTap: (){
                setState(() {

                });
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_circle_right),
              title: Text("Important"),
              onTap: (){
                setState(() {

                });
              },
            ),
            ListTile(
              leading: Icon(Icons.play_arrow_outlined),
              title: Text("Sent"),
              onTap: (){
                setState(() {

                });
              },
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text("Scheduled"),
              onTap: (){
                setState(() {

                });
              },
            ),
            ListTile(
              leading: Icon(Icons.outbox),
              title: Text("Outbox"),
              onTap: (){
                setState(() {

                });
              },
            ),
            ListTile(
              leading: Icon(Icons.drafts_outlined),
              title: Text("Drafts"),
              trailing: Text("47"),
              onTap: (){
                setState(() {

                });
              },
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("All mail"),
              trailing: Text("99+"),
              onTap: (){
                setState(() {

                });
              },
            ),
            ListTile(
              leading: Icon(Icons.report_outlined),
              title: Text("Spam"),
              trailing: Text("10"),
              onTap: (){
                setState(() {

                });
              },
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
              onTap: (){
                setState(() {

                });
              },
            ),
            Title(color: Colors.white, child: Text("Google apps")),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Calender"),
              onTap: (){
                setState(() {

                });
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text("Contacts"),
              onTap: (){
                setState(() {

                });
              },
            ),
          ],
        ),


      ),
    );
  }
}
