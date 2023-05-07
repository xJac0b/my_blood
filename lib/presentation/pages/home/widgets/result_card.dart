import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';

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
    return SizedBox(
      width: 250,
      height: 60,
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: context.colors.surface,
        child: Row(
          children: [
            Container(
                color: const Color.fromARGB(231, 252, 250, 250),
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
                            fontWeight: FontWeight.w400,
                            fontSize: 30,
                          )),
                      TextSpan(
                          text: year,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w500)),
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
    properties
      ..add(StringProperty('dayMonth', dayMonth))
      ..add(StringProperty('year', year))
      ..add(StringProperty('title', title));
  }
}
