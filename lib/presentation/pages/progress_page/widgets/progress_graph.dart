import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
                ResultData(DateTime.now(), 35),
                ResultData(DateTime.now(), 28),
                ResultData(DateTime.now(), 34),
                ResultData(DateTime.now(), 32),
                ResultData(DateTime.now(), 40)
              ],
              xValueMapper: (ResultData result, _) => result.date,
              yValueMapper: (ResultData result, _) => result.value)
        ]);
  }
}

class ResultData {
  ResultData(this.date, this.value);
  final DateTime date;
  final double value;
}
