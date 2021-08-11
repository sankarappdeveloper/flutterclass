import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Basicsoflayouts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Basicsoflayouts();
  }
}

class _Basicsoflayouts extends State<Basicsoflayouts> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:

        // SingleChildScrollView(child:Center(
        //     child:
        //     Column(
        //       children: [
        //         Container(
        //           height: 250,
        //           width: 250,
        //           child: (Image.asset('assets/sample.jpg')),
        //         ),
        //         Container(
        //
        //           width: 250,
        //           child: (Image.network('https://images.indianexpress.com/2017/04/nature-tree_1200.jpg',height: 300,)),
        //         ),
        //         Stack(
        //           alignment: AlignmentDirectional.center,
        //           children: [
        //             Container(
        //               height: 250,
        //               width: 250,
        //               child: (Image.asset('assets/sample.jpg')),
        //             ),
        //             Positioned(child: Container(
        //               alignment: Alignment.center,
        //               height: 100,
        //               width: 100,
        //               child: (Image.network('https://images.indianexpress.com/2017/04/nature-tree_1200.jpg',)),
        //             ),),
        //
        //           ],
        //         ),
        //
        //         Container(
        //           height:40,
        //           color: Colors.green,
        //           child: Text("bottom"),
        //         ),
        //
        //
        //         Container(
        //
        //             width: 500,
        //
        //             child:Card(
        //
        //           child:Padding(
        //             padding: const EdgeInsets.all(15),
        //           child:Text("Warpe Academy"),
        //         )
        //
        //         )
        //         ),
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //
        //       ],
        //     )
        //    ))

        GridView.count(crossAxisCount: 4,
        children: List.generate(30, (index)
        {
          return Container(
            height: 250,
            width: 250,
            child: (Image.asset('assets/sample.jpg')),
          );
        },)
        )
    );
  }
}
