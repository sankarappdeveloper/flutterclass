import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedpreferencetask extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Sharedpreferencetask();
  }
}

class _Sharedpreferencetask extends State<Sharedpreferencetask> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  late Future<int> _count;

  Future<void> _increment() async {
    SharedPreferences prefs = await _prefs;
    final int count = (prefs.getInt("value") ?? 0) + 1;

    setState(() {
      _count = prefs.setInt("value", count).then((bool success) {
        return _count;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: FutureBuilder<int>(
          future: _count,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return CircularProgressIndicator();
              case ConnectionState.done:
                return Center(child:Text(snapshot.data.toString()));
              default:
                return Text("");
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        tooltip: "clicked",
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  void initState() {
    _count = _prefs.then((SharedPreferences prefs) {
      return (prefs.getInt("value") ?? 0);
    });
  }
}
