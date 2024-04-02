import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<FlSpot> data = [
      const FlSpot(0, 0), // Sunday (X = 0, Y = 0)
      const FlSpot(1, 3), // Monday (X = 1, Y = 3)
      const FlSpot(2, 5), // Tuesday (X = 2, Y = 5)
      const FlSpot(3, 2), // Wednesday (X = 3, Y = 2)
      const FlSpot(4, 4), // Thursday (X = 4, Y = 4)
      const FlSpot(5, 6), // Friday (X = 5, Y = 6)
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
