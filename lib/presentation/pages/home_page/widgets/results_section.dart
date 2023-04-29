import 'package:flutter/material.dart';

import '../../../../utils/extensions.dart';
import '../../../core/widgets/default_padding.dart';
import '../../../core/widgets/headline_medium.dart';
import 'result_card.dart';

class ResultsSection extends StatelessWidget {
  const ResultsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultPadding(
              child: HeadlineMedium('${context.l10n.resultsSectionTitle} 📝')),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ResultCard(dayMonth: '1 Sep', year: '2021', title: 'Test 1'),
                ResultCard(dayMonth: '10 Feb', year: '2021', title: 'Test 2'),
                ResultCard(dayMonth: '30 Jan', year: '2019', title: 'Test 3'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}