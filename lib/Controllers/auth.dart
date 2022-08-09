import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Utilities/constants.dart';

class AuthController {
  void loginUser(String email, String password) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await firebaseAuth
            .signInWithEmailAndPassword(email: email, password: password)
            .then(
          (user) {
            print("MY DATA");
            print(user.user!.uid);
            firestore
                .doc('$user.user!.uid')
                .get()
                .then((value) => print(value));
          },
        );
      } else {
        Fluttertoast.showToast(
          msg: 'Error Logging in\nPlease enter all the fields',
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      }
    } catch (e) {
      print(e.toString());
      Fluttertoast.showToast(
        msg: 'Error Loggin gin\n e.toString()',
      );
    }
  }
}
