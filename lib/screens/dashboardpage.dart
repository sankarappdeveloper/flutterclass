import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Dashboardpage extends StatefulWidget
{

  final String username;
  final String password;
  Dashboardpage(this.username, this.password);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _Dashboardpage();
  }
  
  
  
}

class _Dashboardpage extends State<Dashboardpage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Scaffold(


  body: Center(

      child:

          Column(mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text("Dashboard Page"),


              Text(widget.username),
              Text(widget.password),



              ElevatedButton(onPressed:()
                  {
                    Navigator.pop(context);



                  }, child: Text("back"))



            ],
          )

      ),


);

  }
}