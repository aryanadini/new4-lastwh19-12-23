import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Allinbox extends StatefulWidget {
  const Allinbox({super.key});

  @override
  State<Allinbox> createState() => _AllinboxState();
}

class _AllinboxState extends State<Allinbox> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext Context,int index){
          return ListTile(
            leading: Icon(Icons.person),
            title: Text("Arya"),
            subtitle: Text("jfjd"),

          );
        });
  }
}

