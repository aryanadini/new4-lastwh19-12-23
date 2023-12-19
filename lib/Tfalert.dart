import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mytext extends StatefulWidget {
late String name;
   Mytext({super.key, required this. name});


   @override
  State<Mytext> createState() => _MytextState();
}

class _MytextState extends State<Mytext> {
  TextEditingController username = TextEditingController();
  TextEditingController pwd = TextEditingController();


  displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('data'),

            content: Column(

              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: username,
                    decoration: InputDecoration(border:OutlineInputBorder(),hintText: "user name"),
                  ),
                ),
                Padding(padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: pwd,
                  decoration: InputDecoration(border:OutlineInputBorder(),hintText: "password"),
                ),

                )
              ],
            ),

            actions: [
              new ElevatedButton(
                child: new Text('SUBMIT'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert', style: TextStyle(fontSize: 20.0),),

          onPressed: () {displayDialog(context);
          },
        ),
      ),

    );
  }
}
