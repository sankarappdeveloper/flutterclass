import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addform.dart';

class FirebaseDashboard extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _FirebaseDashboard();
  }


}

class _FirebaseDashboard extends State<FirebaseDashboard>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body:Text("data"),


      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Addform()));



        },


        child: Icon(Icons.add),

      ),

    );
  }




}