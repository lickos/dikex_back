import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dikex_back/Controllers/database_controller.dart';
import 'package:dikex_back/Utilities/app_colors.dart';
import 'package:dikex_back/Views/Widgets/diatrofologio_field.dart';
import 'package:dikex_back/Views/Widgets/my_text_field.dart';
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
  List<Map<String, TextEditingController>> myControllers = [];

  @override
  void initState() {
    getMyData();
    super.initState();
  }

  getMyData() async {
    DatabaseController().getdiatrofologioNerompigies('ΔΕΥΤΕΡΑ');
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
                    children: getFields('ΔΕΥΤΕΡΑ'),
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

  getFields(String day) {
    List<Widget> dayFood = [];
    TextEditingController proinoController = TextEditingController();
    TextEditingController mesimerianoController = TextEditingController();
    dayFood.add(Text(day));
    var returnedData = DatabaseController().getdiatrofologioNerompigies(day);
    print(returnedData);
    // proinoController.text = returnedData['ΠΡΩΙΝΟ'];
    // mesimerianoController.text = returnedData['ΜΕΣΗΜΕΡΙΑΝΟ'];
    // dayFood.add(
    //   Row(
    //     children: [
    //       const Text(
    //         'Πρωινό: ',
    //         style: TextStyle(fontWeight: FontWeight.w500),
    //       ),
    //       DiatrofologioField(myController: proinoController),
    //     ],
    //   ),
    // );
    // dayFood.add(
    //   Row(
    //     children: [
    //       const Text(
    //         'Μεσημεριανό: ',
    //         style: TextStyle(fontWeight: FontWeight.w500),
    //       ),
    //       DiatrofologioField(myController: mesimerianoController),
    //     ],
    //   ),
    // );
    return dayFood;
  }
}
