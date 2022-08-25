import 'package:dikex_back/Controllers/database_controller.dart';
import 'package:flutter/material.dart';

class DiatrofologioField extends StatefulWidget {
  final String day;
  final String nipiaProino;
  final String nipiaMesimeriano;
  final String vrefiProino;
  final String vrefiMesimeriano;
  const DiatrofologioField({
    Key? key,
    required this.day,
    required this.nipiaProino,
    required this.nipiaMesimeriano,
    required this.vrefiMesimeriano,
    required this.vrefiProino,
  }) : super(key: key);

  @override
  State<DiatrofologioField> createState() => _DiatrofologioFieldState();
}

class _DiatrofologioFieldState extends State<DiatrofologioField> {
  TextEditingController nipiaProinoController = TextEditingController();
  TextEditingController vrefiProinoController = TextEditingController();
  TextEditingController nipiaMesimerianoController = TextEditingController();
  TextEditingController vrefiMesimerioanoController = TextEditingController();
  String nipiaProinoText = '';
  String vrefiProinoText = '';
  String nipiaMesimerianoText = '';
  String vrefiMesimerianoText = '';

  @override
  void dispose() {
    nipiaProinoController.dispose();
    vrefiProinoController.dispose();
    nipiaMesimerianoController.dispose();
    vrefiMesimerioanoController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    nipiaProinoText = widget.nipiaProino;
    nipiaProinoController.text = nipiaProinoText;
    vrefiProinoText = widget.vrefiProino;
    vrefiProinoController.text = vrefiProinoText;
    nipiaMesimerianoText = widget.nipiaMesimeriano;
    nipiaMesimerianoController.text = nipiaMesimerianoText;
    vrefiMesimerianoText = widget.vrefiMesimeriano;
    vrefiMesimerioanoController.text = widget.vrefiMesimeriano;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / 5.1,
      child: Column(
        children: [
          Text(
            widget.day,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Table(
            defaultColumnWidth: const FlexColumnWidth(1.0),
            border: TableBorder.all(),
            children: [
              const TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'ΒΡΕΦΗ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "ΝΗΠΙΑ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ΠΡΩΙΝΟ:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          vrefiProinoText,
                          textAlign: TextAlign.left,
                          maxLines: 3,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _openAlert(vrefiProinoController, 'ΠΡΩΙΝΟ - ΒΡΕΦΗ',
                              'vrefiProino');
                        },
                        icon: const Icon(Icons.edit),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ΠΡΩΙΝΟ:',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          nipiaProinoText,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _openAlert(nipiaProinoController, 'ΠΡΩΙΝΟ - ΝΗΠΙΑ',
                              'nipiaProino');
                        },
                        icon: const Icon(Icons.edit),
                      )
                    ],
                  ),
                ),
              ]),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'ΜΕΣΗΜΕΡΙ:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            vrefiMesimerianoText,
                            maxLines: 3,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            _openAlert(vrefiMesimerioanoController,
                                'ΜΕΣΗΜΕΡΙΑΝΟ - ΒΡΕΦΗ', 'vrefiMesimeriano');
                          },
                          icon: const Icon(Icons.edit),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'ΜΕΣΗΜΕΡΙ:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            nipiaMesimerianoText,
                            textAlign: TextAlign.left,
                            maxLines: 3,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            _openAlert(nipiaMesimerianoController,
                                'ΜΕΣΗΜΕΡΙΑΝΟ - ΝΗΠΙΑ', 'nipiaMesimeriano');
                          },
                          icon: const Icon(Icons.edit),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _openAlert(
    TextEditingController myController,
    String alertTitle,
    String myFunctionString,
  ) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            '$alertTitle - ${widget.day}',
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextFormField(
                  controller: myController,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () {
                switch (myFunctionString) {
                  case 'vrefiProino':
                    {
                      setVrefiProino(myController, 'ΠΡΩΙΝΟ-ΒΡΕΦΗ');
                    }
                    break;
                  case 'nipiaProino':
                    {
                      setNipiaProino(myController, 'ΠΡΩΙΝΟ-ΝΗΠΙΑ');
                    }
                    break;
                  case 'vrefiMesimeriano':
                    {
                      setVrefiMesimeriano(myController, 'ΜΕΣΗΜΕΡΙΑΝΟ-ΒΡΕΦΗ');
                    }
                    break;
                  case 'nipiaMesimeriano':
                    {
                      setNipiaMesimeriano(myController, 'ΜΕΣΗΜΕΡΙΑΝΟ-ΝΗΠΙΑ');
                    }
                    break;
                  default:
                    {
                      // setVrefiProino(myController);
                    }
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void setVrefiProino(TextEditingController myController, String timeLunch) {
    setState(() {
      vrefiProinoText = myController.text;
    });
    DatabaseController()
        .setItemInArray(widget.day, timeLunch, myController.text);
  }

  void setNipiaProino(TextEditingController myController, String timeLunch) {
    setState(() {
      nipiaProinoText = myController.text;
    });
    DatabaseController()
        .setItemInArray(widget.day, timeLunch, myController.text);
  }

  void setVrefiMesimeriano(
      TextEditingController myController, String timeLunch) {
    setState(() {
      vrefiMesimerianoText = myController.text;
    });
    DatabaseController()
        .setItemInArray(widget.day, timeLunch, myController.text);
  }

  void setNipiaMesimeriano(
      TextEditingController myController, String timeLunch) {
    setState(() {
      nipiaMesimerianoText = myController.text;
    });
    DatabaseController()
        .setItemInArray(widget.day, timeLunch, myController.text);
  }
}
