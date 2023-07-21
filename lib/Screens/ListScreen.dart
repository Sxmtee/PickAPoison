import 'package:flutter/material.dart';
import 'package:quizapp/Common/Widgets/option_card.dart';
import 'package:quizapp/Screens/LandingScreen.dart';

class ListScreen extends StatefulWidget {
  final List<String> button;
  const ListScreen({super.key, required this.button});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 10,
                child: Text(
                  widget.button.toString(),
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              OptionCard(
                option: "Back to Home",
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const LandingScreen(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.white,
                width: 200,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
