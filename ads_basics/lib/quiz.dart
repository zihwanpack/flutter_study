import 'package:ads_basics/data/questions.dart';
import 'package:ads_basics/questions_screen.dart';
import 'package:ads_basics/results_screen.dart';
import 'package:ads_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });

    void chooseAnswer(String answer) {
      selectedAnswers.add(answer);

      if (selectedAnswers.length == questions.length) {
        setState(() {
          activeScreen = 'results-screen';
        });
      }
    }

    void restartQuiz() {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'question-screen';
      });
      //     activeScreen == 'start-screen'
      //         ? StartScreen(switchScreen)
      //         : const QuestionsScreen();
      Widget screenWidget = StartScreen(switchScreen);

      if (activeScreen == 'question-screen') {
        screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
      }
      if (activeScreen == 'results-screen') {
        screenWidget = ResultsScreen(
          chosenAnswers: selectedAnswers,
          onRestart: restartQuiz,
        );
      }

      return MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purpleAccent, Colors.blueGrey],
              ),
            ),

            child: screenWidget,
          ),
        ),
      );
    }
  }
}
