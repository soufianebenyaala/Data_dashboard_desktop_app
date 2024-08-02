import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphWidget extends StatelessWidget {
  const GraphWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(2011, 600, 100, 100),
      ChartData(2012, 400, 300, 100),
      ChartData(2013, 500, 300, 100),
      ChartData(2014, 600, 300, 500),
      ChartData(2015, 400, 100, 200),
      ChartData(2016, 200, 400, 200),
      ChartData(2017, 100, 350, 300),
      ChartData(2018, 500, 400, 0),
      ChartData(2019, 100, 500, 600),
      ChartData(2020, 100, 500, 300),
      ChartData(2021, 100, 100, 300),
    ];
    return SfCartesianChart(
        legend: Legend(
          isVisible: true,
          position: LegendPosition.top,
        ),
        series: <CartesianSeries>[
          StackedAreaSeries<ChartData, int>(
              legendIconType: LegendIconType.circle,
              legendItemText: 'Completed Ph.D.: 323 (75%)',
              color: Color(0xFF0066FF).withOpacity(0.1),
              borderColor: Color(0xFF0066FF),
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y1),
          StackedAreaSeries<ChartData, int>(
              legendIconType: LegendIconType.circle,
              legendItemText: 'New Ph.D. candidates: 113 (25%)',
              color: Color(0xFFFF7A00).withOpacity(0.1),
              borderColor: Color(0xFFFF7A00),
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y2),
        ]);
  }
}

class ChartData {
  ChartData(this.x, this.y1, this.y2, this.y3);
  final int x;
  final double y1;
  final double y2;
  final double y3;
}
