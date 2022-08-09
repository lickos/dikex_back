import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dikex_back/Utilities/constants.dart';

class DatabaseController {
  getdiatrofologioNerompigies() async {
    List<dynamic> myList = [];
    QuerySnapshot myData =
        await firestore.collection('nerompogies_diatrofologio').get();
    for (var snapshot in myData.docs) {
      myList.add({snapshot.id: snapshot.data()});
    }
    // final allData = myData.docs.map((doc) => doc.data()).toList();
    return myList;
  }
}
