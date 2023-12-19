import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calert extends StatefulWidget {
  const Calert({super.key});

  @override
  State<Calert> createState() => _CalertState();
}

class _CalertState extends State<Calert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirmation AlertDialog"),
      ),
    );
  }
}
