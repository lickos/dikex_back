import 'package:dikex_back/Utilities/constants.dart';

class DatabaseController {
  getdiatrofologioNerompigies(String day) {
    return firestore.collection('nerompogies_diatrofologio').doc(day).get();
  }

  setItemInArray(String day, String timeLunch, String newData) {
    return firestore.collection('nerompogies_diatrofologio').doc(day).update({
      timeLunch: newData
    });
  }
}
