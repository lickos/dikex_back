// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBmdRl8-WHGKFPOcicKsjvXOWesF_eg0HU',
    appId: '1:571583591064:web:d2e98bc649b06fad0396ed',
    messagingSenderId: '571583591064',
    projectId: 'dikex-george-chios',
    authDomain: 'dikex-george-chios.firebaseapp.com',
    storageBucket: 'dikex-george-chios.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCySd6SVnlZzs8klTWcoL406bfU15HF5Uc',
    appId: '1:571583591064:android:5ff4261f3c239a2d0396ed',
    messagingSenderId: '571583591064',
    projectId: 'dikex-george-chios',
    storageBucket: 'dikex-george-chios.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXAOE3_xCRdMHcSwI-ngjpJgmJahI8Jig',
    appId: '1:571583591064:ios:a088e9f2252cd64f0396ed',
    messagingSenderId: '571583591064',
    projectId: 'dikex-george-chios',
    storageBucket: 'dikex-george-chios.appspot.com',
    iosClientId: '571583591064-ctk5f3pkbaremaqsgoj42bkpr5gnu05u.apps.googleusercontent.com',
    iosBundleId: 'com.georgechios.dikexBack',
  );
}
