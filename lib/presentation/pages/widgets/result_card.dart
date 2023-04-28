// ignore_for_file: cascade_invocations

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    Key? key,
    required this.dayMonth,
    required this.year,
    required this.title,
  }) : super(key: key);
  final String dayMonth;
  final String year;
  final String title;
  // final Function

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 60,
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: const Color.fromARGB(154, 245, 39, 39),
        child: Row(
          children: [
            Container(
                color: const Color.fromARGB(255, 253, 213, 93),
                width: 100,
                height: double.infinity,
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: '$dayMonth\n',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          )),
                      TextSpan(
                          text: year,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                )),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('dayMonth', dayMonth));
    properties.add(StringProperty('year', year));
    properties.add(StringProperty('title', title));
  }
}
