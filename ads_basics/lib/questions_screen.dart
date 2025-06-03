<<<<<<< HEAD
import 'package:ads_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:ads_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;
=======
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
>>>>>>> f52bb9afb1f5b517081c4f27b0d6e60e234a6574

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
<<<<<<< HEAD
  var currentQuestionIndex = 0;

  void answeredQuestion(String selectedAnswers) {
    // widget 클래스는 state 확장할 때 쓰임
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      // 가능한 최대한 넓이
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.notoSans(
                color: const Color.fromARGB(255, 154, 187, 236),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answeredQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
=======
  @override
  Widget build(context) {
    return Text('질문 스크린');
>>>>>>> f52bb9afb1f5b517081c4f27b0d6e60e234a6574
  }
}
