import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wednesdaytwelve extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Wednesdaytwelve();
  }
}

class _Wednesdaytwelve extends  State<Wednesdaytwelve>{
  Future<String>_calc=Future<String>.delayed(Duration(seconds: 3),()=>"Success");
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:SafeArea(
        child:FutureBuilder<String>(
        future: _calc,
        builder: (BuildContext context,AsyncSnapshot<String> snapshot)
        {
          if(snapshot.hasData)
            {
              return Container(child: Text("Success"),);
            }
          else
            {
              return Container(child: Text("Failed"),);
            }
        },
      )

      // LayoutBuilder(builder: (BuildContext context,BoxConstraints contraints)
      //   {
      //     if(contraints.maxWidth>600)
      //       {
      //
      //
      //
      //         //   Column(
      //         //   mainAxisAlignment: MainAxisAlignment.center,
      //         //   children: [
      //         //
      //         //
      //         //     Row(
      //         //
      //         //       children: [
      //         //
      //         //       ],
      //         //     )
      //         //
      //         //
      //         //   ],
      //         // );
      //       }else{
      //       return Container(color: Colors.blue);
      //     }
      //   },),
    //    Row(
    //   children: [
    //     Expanded(
    //         flex: 2,
    //         child: Container(
    //
    //
    //         height: 100,
    //         color: Colors.red)),
    //
    //     SizedBox(width: 10,),
    //     Expanded(
    //         flex:2,child: Container(
    //         height: 100,
    //         color: Colors.red)),
    //     SizedBox(width: 10,),
    //     Container(
    //         height: 100,
    //         width: 50,
    //         color: Colors.red)
    //   ],
    // )
      )
    );
  }
}


