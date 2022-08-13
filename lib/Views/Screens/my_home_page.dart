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
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildColumn('ΔΕΥΤΕΡΑ'),
                  buildColumn('ΤΡΙΤΗ'),
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

  Widget buildColumn(String day) {
    return FutureBuilder(
      future: DatabaseController().getdiatrofologioNerompigies(day),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("Document does not exist");
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return DiatrofologioField(
              day: day,
              nipiaProino: '${data['ΠΡΩΙΝΟ'][1]}',
              nipiaMesimeriano: '${data['ΜΕΣΗΜΕΡΙΑΝΟ'][1]}',
              vrefiMesimeriano: '${data['ΜΕΣΗΜΕΡΙΑΝΟ'][0]}',
              vrefiProino: '${data['ΠΡΩΙΝΟ'][0]}');
        }
        return const Text('Loading....');
      },
    );
  }
}
