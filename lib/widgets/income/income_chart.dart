import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pictureResponse) {
            activeIndex =
                pictureResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              value: 40,
              color: const Color(0xFF208CC8),
              showTitle: false,
              radius: activeIndex == 0 ? 60 : 50),
          PieChartSectionData(
              value: 25,
              color: const Color(0xFF4EB7F2),
              showTitle: false,
              radius: activeIndex == 1 ? 60 : 50),
          PieChartSectionData(
              value: 20,
              color: const Color(0xFF064061),
              showTitle: false,
              radius: activeIndex == 2 ? 60 : 50),
          PieChartSectionData(
              value: 22,
              color: const Color(0xFFE2DECD),
              showTitle: false,
              radius: activeIndex == 3 ? 60 : 50),
        ]);
  }
}
