import 'package:dikex_back/Utilities/app_colors.dart';
import 'package:dikex_back/Views/Screens/login.dart';
import 'package:dikex_back/Views/Screens/my_home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ΔΗ.Κ.Ε.Χ.',
      theme: ThemeData.light().copyWith(primaryColor: mainColor),
      home: const LoginPage(),
    );
  }
}
