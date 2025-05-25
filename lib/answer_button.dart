import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerNumber,
    required this.onTapAswer,
  });

  final String answerNumber;

  final void Function() onTapAswer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTapAswer,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(answerNumber),
    );
  }
}
