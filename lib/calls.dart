import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Cal {
  late String name;
  late String msg;
  late String img;
  late String date;
  Cal(
      {required this.name,
        required this.msg,
        required this.img,
        required this.date});
}

class call extends StatefulWidget {
  const call({super.key});

  @override
  State<call> createState() => _callState();
}

class _callState extends State<call> {

  List<Cal> callist = [
    Cal(
        name: "arya",
        msg: "hai",
        img:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Kochi_Skyline.jpg/209px-Kochi_Skyline.jpg",
        date: "12/12"),
    Cal(
        name: "amnu",
        msg: "hlo",
        img:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/BACKWATERS_OF_KUTTANAD.jpg/420px-BACKWATERS_OF_KUTTANAD.jpg",
        date: "13/5/22")
  ];
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SizedBox(
        height: 400,

        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: callist.length,
          itemBuilder: (BuildContext , int index) {
            Cal c=callist[index];
            return ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage("${c.img}"),),
              title: Text("${c.name}"),
              subtitle: Text("${c.date}"),
              trailing: ElevatedButton(onPressed: (){}, child: Icon(Icons.call_rounded)),
            );
          },
        ),

      ),
    );
  }
}
