import 'package:flutter/material.dart';
import "package:quiz_app_flutter/data/questions.dart";

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    required this.chooseAnswer,
    required this.onRestartQuiz,
    super.key,
  });

  final List<String> chooseAnswer;

  final void Function() onRestartQuiz;

  List<Map<String, Object>> getDataSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswer.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].question,
        "correct_answer": questions[i].answers,
        "user_answer": chooseAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your Answered :   Questions"),
            SizedBox(height: 30),
            TextButton(onPressed: onRestartQuiz, child: Text("Restart Quiz!")),
          ],
        ),
      ),
    );
  }
}
