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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / 5.1,
      child: Column(
        children: [
          Text(widget.day),
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
                      Text(
                        textAlign: TextAlign.left,
                        widget.vrefiProino,
                        maxLines: 3,
                      ),
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
                      Text(
                        widget.nipiaProino,
                        textAlign: TextAlign.left,
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
                        Text(
                          widget.vrefiMesimeriano,
                          maxLines: 3,
                          textAlign: TextAlign.left,
                        ),
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
                        Text(
                          widget.nipiaMesimeriano,
                          textAlign: TextAlign.left,
                          maxLines: 3,
                        ),
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
}
