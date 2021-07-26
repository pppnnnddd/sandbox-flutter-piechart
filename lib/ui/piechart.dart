import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartView extends StatefulWidget {
  const PieChartView  ({Key? key}) : super(key: key);

  @override
  _PieChartState createState() => _PieChartState();
}

class _PieChartState extends State<PieChartView> {
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      "a": 1,
      "b": 1,
      "c": 1,
      "d": 1,
    };

    return PieChart(
      dataMap: dataMap,
      chartType: ChartType.ring,
      animationDuration: Duration(milliseconds: 500),
        initialAngleInDegree: -90,
      colorList: [
        Color.fromRGBO(60, 103, 84, 1),
        Color.fromRGBO(0, 164, 93, 1),
        Color.fromRGBO(0, 204, 102, 1),
        Color.fromRGBO(51, 255, 153, 1)
      ],
      legendOptions: LegendOptions(
        showLegends: false
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: false,
        showChartValues: false,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false
      )
    );
  }

}
