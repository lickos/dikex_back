import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dikex_back/Utilities/constants.dart';

class DatabaseController {
  getdiatrofologioNerompigies(String day) async {
    List<dynamic> myList = [];
    DocumentSnapshot<Map<String, dynamic>> myData =
        await firestore.collection('nerompogies_diatrofologio').doc(day).get();
    return myData;
  }
}
