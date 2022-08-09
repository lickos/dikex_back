import 'package:dikex_back/Controllers/database_controller.dart';
import 'package:dikex_back/Utilities/app_colors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = 'home-page';
  final String paidikos;
  const MyHomePage({
    Key? key,
    required this.paidikos,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> myData = [];

  @override
  void initState() {
    getMyData();
    super.initState();
  }

  getMyData() async {
    var tempData = await DatabaseController().getdiatrofologioNerompigies();
    setState(() {
      myData = tempData;
      print(myData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                widget.paidikos,
                style: const TextStyle(fontSize: 30, color: secondaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  ),
                  Text('ΤΡΙΤΗ'),
                  Text('ΤΕΤΑΡΤΗ'),
                  Text('ΠΕΜΠΤΗ'),
                  Text('ΠΑΡΑΣΚΕΥΗ'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
