import 'package:dikex_back/Utilities/constants.dart';
import 'package:dikex_back/Views/Screens/my_home_page.dart';
import 'package:dikex_back/Views/Widgets/buttons.dart';
import 'package:dikex_back/Views/Widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import '../../Controllers/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.webp'),
              verticalSpace,
              const Text(
                'Παρακαλώ Συνδεθείτε',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45,
                  letterSpacing: 1.2,
                ),
              ),
              biggerSpace,
              MyTextField(
                myController: _emailController,
                myLabel: 'Email',
                myIcon: const Icon(Icons.email),
              ),
              verticalSpace,
              MyTextField(
                myController: _passwordController,
                myLabel: 'Password',
                myIcon: const Icon(Icons.key),
                isObscured: true,
              ),
              verticalSpace,
              MyButton(
                handleTap: () {
                  loginUser();
                },
                buttonText: 'Συνδεθείτε',
              ),
            ],
          ),
        ),
      ),
    );
  }

  loginUser() async {
    String myString = await AuthController()
        .loginUser(_emailController.text, _passwordController.text);
    moveToNextPage(myString);
  }

  moveToNextPage(String paidikosName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(
          paidikos: paidikosName,
        ),
      ),
    );
  }
}
