import 'package:flutter/material.dart';
import 'package:quizapp/Common/Utils/colors.dart';
import 'package:quizapp/Common/Widgets/option_card.dart';
import 'package:quizapp/Screens/HomeScreen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.background,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OptionCard(
                option: "Football Edition",
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.white,
                width: 200,
                height: 100,
              ),
              OptionCard(
                option: "Music Edition",
                onPressed: () {},
                color: Colors.white,
                width: 200,
                height: 100,
              ),
              OptionCard(
                option: "History Edition",
                onPressed: () {},
                color: Colors.white,
                width: 200,
                height: 100,
              ),
              OptionCard(
                option: "Food Edition",
                onPressed: () {},
                color: Colors.white,
                width: 200,
                height: 100,
              ),
              OptionCard(
                option: "Basketball Edition",
                onPressed: () {},
                color: Colors.white,
                width: 200,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
