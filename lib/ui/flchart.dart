import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class FlChart extends StatefulWidget {
  const FlChart({Key? key}) : super(key: key);

  @override
  _FlChartState createState() => _FlChartState();
}

class _FlChartState extends State<FlChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PieChart(
          PieChartData(
              startDegreeOffset: -90,
              borderData: FlBorderData(
                  show: false
              ),
              sectionsSpace: 0,
              centerSpaceRadius: 95,
              sections: showingSections()
          )
      ),
    );
  }

  List<PieChartSectionData> showingSections() {

    return [
      PieChartSectionData(
        color: Color.fromRGBO(60, 103, 84, 1),
        value: 25,
        title: '',
      ),
      PieChartSectionData(
        color: Color.fromRGBO(0, 164, 93, 1),
        value: 25,
        title: '',
      ),
      PieChartSectionData(
        color: Color.fromRGBO(0, 204, 102, 1),
        value: 25,
        title: '',
      ),
      PieChartSectionData(
        color: Color.fromRGBO(51, 255, 153, 1),
        value: 25,
        title: '',
      ),
    ];
  }
}
