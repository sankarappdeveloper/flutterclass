import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:validation/screens/09-08-21/monday09.dart';
import 'package:validation/screens/11-08-2021/basicsoflayouts.dart';
import 'package:validation/screens/12-08-2021/wedenesdaytwelve.dart';
import 'package:validation/screens/14-08-2021/sharedpreferencetask.dart';
import 'package:validation/screens/17-08-2021/provider/countprovider.dart';
import 'package:validation/screens/17-08-2021/providerexample.dart';
import 'package:validation/screens/18-08-2021/lisiviewdata.dart';
import 'package:validation/screens/18-08-2021/providerapi/listviewprovider.dart';
import 'package:validation/screens/28-08-2021/firebase_dashboard.dart';
import 'package:validation/screens/dashboardpage.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(

      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => Countprovider()),
            ChangeNotifierProvider(create: (_) => Listprovider()),
          ],
          child:

      Defaultpage()));
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
      home: FirebaseDashboard()
    );
  }
}




