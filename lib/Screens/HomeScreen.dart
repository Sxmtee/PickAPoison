import 'package:flutter/material.dart';
import 'package:quizapp/Common/Utils/colors.dart';
import 'package:quizapp/Common/Widgets/next_button.dart';
import 'package:quizapp/Common/Widgets/question_widget.dart';
import 'package:quizapp/Models/question_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> questions = [
    Question(
      id: "1",
      title: "Pick A Poison",
      options: {"A": "false", "B": "false"},
    ),
    Question(
      id: "2",
      title: "Pick A Poison",
      options: {"A": "false", "B": "false"},
    ),
    Question(
      id: "3",
      title: "Pick A Poison",
      options: {"A": "false", "B": "false"},
    ),
    Question(
      id: "4",
      title: "Pick A Poison",
      options: {"A": "false", "B": "false"},
    ),
    Question(
      id: "5",
      title: "Pick A Poison",
      options: {"A": "false", "B": "false"},
    ),
  ];
  int index = 0;

  void nextQuestion() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.background,
      appBar: AppBar(
        title: const Text("Quiz App"),
        elevation: 0.0,
        backgroundColor: Pallete.background,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            QuestionWidget(
              question: questions[index].title,
              indexAction: index,
              totalQuestion: questions.length,
            ),
            const Divider(
              color: Pallete.neutral,
            )
          ],
        ),
      ),
      floatingActionButton: NextButton(
        onPressed: nextQuestion,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
