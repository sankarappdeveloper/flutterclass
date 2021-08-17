import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:validation/screens/17-08-2021/provider/countprovider.dart';

class Providerexample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Providerexample();
  }
}

class _Providerexample extends State<Providerexample> {


  int value=0;


  @override
  Widget build(BuildContext context) {

    var provider=Provider.of<Countprovider>(context,listen: true);

    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        onPressed: ()
        {
          // setState(()
          // {
          //   value++;
          // });


          provider.incrementer();
        },
      ),


      body: Center(
        child:
          Text(provider.value.toString())
      ),


    );
  }




}




