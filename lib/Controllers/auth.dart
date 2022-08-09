import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Utilities/constants.dart';

class AuthController {
  loginUser(String email, String password) async {
    String paidikos = '';
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        var myUser = await firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password);
        var tempUser = await myUsers.doc(myUser.user!.uid).get();
        paidikos = tempUser['paidikos'];
      } else {
        Fluttertoast.showToast(
          msg: 'Error Logging in\nPlease enter all the fields',
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      }
    } catch (e) {
      paidikos = 'error';
      Fluttertoast.showToast(
        msg: 'Error Loggin\n e.toString()',
      );
    }
    return paidikos;
  }
}
