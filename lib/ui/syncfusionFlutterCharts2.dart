import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SyncfusionFlutterChartStack extends StatefulWidget {
  const SyncfusionFlutterChartStack({Key? key}) : super(key: key);

  @override
  _SyncfusionFlutterChartStackState createState() => _SyncfusionFlutterChartStackState();
}

class _SyncfusionFlutterChartStackState extends State<SyncfusionFlutterChartStack> {
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
          child: Stack(
            children: [
              SfCircularChart(
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
              Container(
                child: Center(
                  child: Text('hoge'),
                ),
              )
            ],
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
