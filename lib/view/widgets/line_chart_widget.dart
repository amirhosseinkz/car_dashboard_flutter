import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LineChart2Widget extends StatefulWidget {

  Color bgColor;
  List<Color> lineColor;
  List<Color> gradientColors;
  List<FlSpot> fLSpotsList;





  LineChart2Widget(
      {
        required this.bgColor,
        required this.lineColor,
        required this.gradientColors,
        required this.fLSpotsList,
      });

  @override
  _LineChartState createState() => _LineChartState();
}

class _LineChartState extends State<LineChart2Widget> {
  @override



  Widget build(BuildContext context) {
    return
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width,
            color: widget.bgColor,
            child: LineChart(
              mainData(),
            ),
      );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
      ),
      borderData: FlBorderData(show: false, border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 7,
      minY: 0,
      maxY: 200,
      titlesData: FlTitlesData(
        leftTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
      ),
      lineBarsData: [
        LineChartBarData(
          colorStops: [10, 10, 10, 10, 10],
          spots: widget.fLSpotsList,
          isCurved: false,
          colors: widget.lineColor,
          barWidth: 3 ,
          isStrokeCapRound: false,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            gradientFrom: Offset(0, 0.6),
            gradientTo: Offset(0, 1.4),
            show: true,
            colors: widget.gradientColors.map((color) => color.withOpacity(1)).toList(),
          ),
        ),
      ],
    );
  }
}
