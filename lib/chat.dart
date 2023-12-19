import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Chat {
  late String name;
  late String msg;
  late String img;
  late String date;
  Chat(
      {required this.name,
        required this.msg,
        required this.img,
        required this.date});
}





class chatt extends StatefulWidget {
  const chatt({super.key});

  @override
  State<chatt> createState() => _chattState();
}

class _chattState extends State<chatt> {

  List<Chat> chatlist = [
    Chat(
        name: "arya",
        msg: "hai",
        img:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Kochi_Skyline.jpg/209px-Kochi_Skyline.jpg",
        date: "12/12"),
    Chat(
        name: "amnu",
        msg: "hlo",
        img:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/BACKWATERS_OF_KUTTANAD.jpg/420px-BACKWATERS_OF_KUTTANAD.jpg",
        date: "13/5/22")
  ];

int currntpage=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:


      ListView.builder(itemCount: chatlist.length,
            itemBuilder: (Buildcontext, int index)
    {
      Chat c = chatlist[index];
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage("${c.img}"),
        ),
        title: Text("${c.name}"),
        subtitle: Text("${c.msg}"),
        trailing: Text("${c.date}"),
      );
    }));
  }
}
