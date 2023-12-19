import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget globalTextBox(TextEditingController  controller){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(border:OutlineInputBorder(),hintText: "user naame"),
    ),
  );
}