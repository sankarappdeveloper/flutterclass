import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _usercllection = _firestore.collection("user");

class Database {
  static Future<void> adduser(
      {required String value1, required String value2}) async {
    Map<String, dynamic> data = <String, dynamic>{
      "value1": value1,
      "value2": value2,
    };
    await _usercllection.doc().set(data);
  }
}


