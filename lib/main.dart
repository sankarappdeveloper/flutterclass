import 'package:flutter/material.dart';
import 'package:validation/screens/09-08-21/monday09.dart';
import 'package:validation/screens/11-08-2021/basicsoflayouts.dart';
import 'package:validation/screens/12-08-2021/wedenesdaytwelve.dart';
import 'package:validation/screens/14-08-2021/sharedpreferencetask.dart';
import 'package:validation/screens/dashboardpage.dart';

void main() {
  runApp(Defaultpage());
}

class Defaultpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink,
        primarySwatch: Colors.blue,
          accentColor: Colors.orange
      ),
      title:"Warpe Acedemy",
      home: Sharedpreferencetask()
    );
  }
}




