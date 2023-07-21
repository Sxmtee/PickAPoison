import 'package:flutter/material.dart';
import 'package:quizapp/Common/Utils/colors.dart';
import 'package:quizapp/Common/Widgets/next_button.dart';
import 'package:quizapp/Common/Widgets/option_card.dart';
import 'package:quizapp/Common/Widgets/question_widget.dart';
import 'package:quizapp/Models/question_model.dart';
import 'package:quizapp/Screens/ListScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> questions = [
    Question(
      id: "1",
      title: "Pick A Poison: (Football Edition)",
      options: {
        "A": "Hazard",
        "B": "Neymar",
      },
    ),
    Question(
      id: "2",
      title: "Pick A Poison: (Football Edition)",
      options: {
        "A": "Ronaldo",
        "B": "Messi",
      },
    ),
    Question(
      id: "3",
      title: "Pick A Poison: (Football Edition)",
      options: {
        "A": "Haaland",
        "B": "Mbappe",
      },
    ),
  ];
  int index = 0;

  List<String> selectedButtons = [];

  void toggleSelection(String button) {
    setState(() {
      if (selectedButtons.contains(button)) {
        selectedButtons.remove(button);
      } else {
        selectedButtons.add(button);
      }
    });
  }

  void nextQuestion() {
    if (index == questions.length - 1) {
      var route = MaterialPageRoute(
        builder: (context) => ListScreen(button: selectedButtons),
      );
      Navigator.push(context, route);
    } else {
      setState(() {
        index++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.background,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
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
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < questions[index].options.length; i++)
                    OptionCard(
                      width: 150,
                      height: 300,
                      onPressed: () {
                        toggleSelection(
                          questions[index].options.values.toList()[i],
                        );
                      },
                      color: selectedButtons.contains(
                        questions[index].options.values.toList()[i],
                      )
                          ? questions[index].options.keys.toList()[i] == "A"
                              ? Pallete.correctA
                              : Pallete.correctB
                          : Pallete.neutral,
                      option: questions[index].options.values.toList()[i],
                    )
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: NextButton(
          onPressed: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
