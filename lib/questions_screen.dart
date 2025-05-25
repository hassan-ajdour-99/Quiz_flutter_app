import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/answer_button.dart';
import 'package:quiz_app_flutter/data/questions.dart';
import 'package:quiz_app_flutter/models/quiz_questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Questions",
            style: const TextStyle(color: Colors.white, fontSize: 26),
          ),
          SizedBox(height: 30),
          Text(
            currentQuestion.question,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),

          SizedBox(height: 30),
          AnswerButton(
            answerNumber: currentQuestion.answer[0],
            onTapAswer: () => {},
          ),
          AnswerButton(
            answerNumber: currentQuestion.answer[1],
            onTapAswer: () => {},
          ),
          AnswerButton(
            answerNumber: currentQuestion.answer[2],
            onTapAswer: () => {},
          ),
          AnswerButton(
            answerNumber: currentQuestion.answer[3],
            onTapAswer: () => {},
          ),
        ],
      ),
    );
  }

  styleForm({required Color color}) {}
}
