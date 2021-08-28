import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'database.dart';

class Addform extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Addform();
  }
}

class _Addform extends State<Addform> {


  final _formkey=GlobalKey<FormState>();
   final firstcontroller =TextEditingController();
   final secondcontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: Scaffold(
      body: Padding(padding: const EdgeInsets.all(15),child:

      Form(
        key:_formkey ,
        child:


      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: firstcontroller,
            decoration: InputDecoration(hintText: "Enter value"),
            validator: (value) {
              if (value!.isEmpty) return "Enter value";
            },
          ),
          TextFormField(
            controller: secondcontroller,
            decoration: InputDecoration(hintText: "Enter Value"),
            validator: (value) {
              if (value!.isEmpty) return "Enter value";
            },
          ),
          ElevatedButton(onPressed: () async {

            if(_formkey.currentState!.validate())
              {
                await Database.adduser(value1: firstcontroller.text, value2: secondcontroller.text);


                    Navigator.pop(context);

              }else
                {

                  print("not valid");
                }



          }, child: Text("submit"))
        ],
      ),
    ))));
  }
}
