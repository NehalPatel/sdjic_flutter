import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<FlSpot> data = [
      FlSpot(0, 0), // Sunday (X = 0, Y = 0)
      FlSpot(1, 3), // Monday (X = 1, Y = 3)
      FlSpot(2, 5), // Tuesday (X = 2, Y = 5)
      FlSpot(3, 2), // Wednesday (X = 3, Y = 2)
      FlSpot(4, 4), // Thursday (X = 4, Y = 4)
      FlSpot(5, 6), // Friday (X = 5, Y = 6)
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chart Widget"),
      ),
      body: SizedBox(
        height: 250,
        child: LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                spots: data, // Our defined data list
                isCurved: true, // Makes the line curved
                color: Colors.blue, // Color of the line
                barWidth: 2,
              ),
            ],
            // backgroundColor: Colors.black
            minX: 0,
            minY: 0,
          ),
        ),
      ),
    );
  }
}
