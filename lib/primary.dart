import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Primary extends StatefulWidget {
  const Primary({super.key});

  @override
  State<Primary> createState() => _PrimaryState();
}

class _PrimaryState extends State<Primary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color
          : Colors.blue,
    );
  }
}
