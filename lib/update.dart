import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Stat {
  late String name;
  late String msg;
  late String img;
  late String date;
  Stat(
      {required this.name,
        required this.msg,
        required this.img,
        required this.date});
}




class Wtupdate extends StatefulWidget {
  const Wtupdate({super.key});

  @override
  State<Wtupdate> createState() => _WtupdateState();
}

class _WtupdateState extends State<Wtupdate> {

  List<Stat> statlist = [
    Stat(
        name: "arya",
        msg: "hai",
        img:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Kochi_Skyline.jpg/209px-Kochi_Skyline.jpg",
        date: "12/12"),
    Stat(
        name: "amnu",
        msg: "hlo",
        img:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/BACKWATERS_OF_KUTTANAD.jpg/420px-BACKWATERS_OF_KUTTANAD.jpg",
        date: "13/5/22")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:



      SingleChildScrollView(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft,
              child: Text("Status",style: TextStyle(fontSize: 25),),
            ),
            SizedBox(
              height: 200,

              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: statlist.length,
                itemBuilder: (
                    BuildContext context, int index) {
                  Stat s=statlist[index];
                  return Align(alignment: Alignment.topLeft,
                    child: Container(
                      height: 100,

                      child: Column(

                        children: [
                          CircleAvatar(backgroundImage: NetworkImage("${s.img}"),radius: 30,),

                          Text("${s.name}",)
                        ],
                      ),
                    ),
                  );
                },

              ),


            ),
          ],
        ),
      ),
    );
  }
}
