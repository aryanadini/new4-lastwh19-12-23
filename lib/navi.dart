import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new4/Tfalert.dart';
import 'package:new4/myalert.dart';

class Navi extends StatefulWidget {
  const Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Home Page'),
    ),
    body: ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Myalert(name:"arya")));

    }, child: Text("navigation ")),






    );
  }
}
