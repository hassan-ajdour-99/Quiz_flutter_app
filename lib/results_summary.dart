import 'package:flutter/material.dart';

class ResultsSummary extends StatelessWidget {
  const ResultsSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext build) {
    return Column(
      children:
          summaryData.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
              ],
            );
          }).toList(),
    );
  }
}
