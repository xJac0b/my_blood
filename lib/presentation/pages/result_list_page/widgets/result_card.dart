import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: const Color.fromARGB(137, 230, 26, 7),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              color: const Color.fromARGB(231, 252, 250, 250),
              width: 150,
              height: double.infinity,
              child: Center(
                child: Text(
                  '20 September\n2022',
                  textAlign: TextAlign.center,
                  style: context.textTheme.labelLarge,
                ),
              ),
            ),
            const Expanded(
              child: Text(
                'tytul',
                style: TextStyle(
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
}
