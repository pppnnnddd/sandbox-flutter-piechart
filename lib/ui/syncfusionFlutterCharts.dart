import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SyncfusionFlutterChart extends StatefulWidget {
  const SyncfusionFlutterChart({Key? key}) : super(key: key);

  @override
  _SyncfusionFlutterChartState createState() => _SyncfusionFlutterChartState();
}

class _SyncfusionFlutterChartState extends State<SyncfusionFlutterChart> {
  late List<ScoreData> _chartData;

  @override
  void initState() {
    _chartData = getScoreList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            child: SfCircularChart(
              annotations: <CircularChartAnnotation>[
                CircularChartAnnotation(
                  widget: Container(
                      child: const Text('hoge')
                  ),
                ),
              ],
              series: <CircularSeries>[
                DoughnutSeries<ScoreData, String>(
                    dataSource: _chartData,
                    xValueMapper: (ScoreData data, _) => data.type,
                    yValueMapper: (ScoreData data, _) => data.score,
                    pointColorMapper: (ScoreData data, _) => data.color ,
                    radius: '100%',
                    innerRadius: '90%'
                )
              ],
            ),
          ),
        )
    );
  }

  List<ScoreData> getScoreList() {
    final List<ScoreData> scoreData = [
      ScoreData('a', 1, Color.fromRGBO(60, 103, 84, 1)),
      ScoreData('b', 1, Color.fromRGBO(0, 164, 93, 1)),
      ScoreData('c', 1, Color.fromRGBO(0, 204, 102, 1)),
      ScoreData('d', 1, Color.fromRGBO(51, 255, 153, 1)),
    ];
    return scoreData;
  }
}

class ScoreData {
  ScoreData(this.type, this.score, this.color);
  final String type;
  final int score;
  final Color color;
}
