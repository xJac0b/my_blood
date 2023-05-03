import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../utils/extensions.dart';

class ProgressGraph extends StatelessWidget {
  const ProgressGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        // Initialize category axis
        primaryXAxis: CategoryAxis(),
        series: <LineSeries<ResultData, DateTime>>[
          LineSeries<ResultData, DateTime>(
              // Bind data source
              dataSource: <ResultData>[
                ResultData(DateTimeX.nowDate, 35),
                ResultData(DateTimeX.nowDate, 28),
                ResultData(DateTimeX.nowDate, 34),
                ResultData(DateTimeX.nowDate, 32),
                ResultData(DateTimeX.nowDate, 40)
              ],
              xValueMapper: (result, _) => result.date,
              yValueMapper: (result, _) => result.value)
        ]);
  }
}

class ResultData {
  ResultData(this.date, this.value);
  final DateTime date;
  final double value;
}
