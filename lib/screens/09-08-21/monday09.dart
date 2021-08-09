
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Monday09 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Monday09();
  }
}  class _Monday09 extends State<Monday09>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

   Size responsive=MediaQuery.of(context).size;
   return Scaffold(





     appBar: AppBar(
       title: Text("Warpe Academy"),
     ),
     body:Row(
       children: [
         Container(
           color: Colors.red,
           width:responsive.width*0.5,
           child:Text("New Page") ,
         ),
         Container(
           color: Colors.green,
           width:responsive.width*0.5,


           child:Text("Second Page") ,
         )
       ],
     )





     ,
     floatingActionButton: FloatingActionButton(
       onPressed: () {
         print(responsive);
       },
       child: Icon(Icons.add),
     )
   );
  }

}