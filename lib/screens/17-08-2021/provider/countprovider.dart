import 'package:flutter/cupertino.dart';

class Countprovider extends ChangeNotifier
{
int value=0;
  Future<int>incrementer() async
  {
    value++;
    notifyListeners();
    return value;
  }
}