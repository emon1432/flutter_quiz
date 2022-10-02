import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/models/questions_model.dart';
import 'package:quiz/pages/game_over_screen.dart';
import 'package:quiz/pages/welcome.dart';

class MainGameScreen extends StatefulWidget {
  const MainGameScreen({super.key});

  @override
  State<MainGameScreen> createState() => _MainGameScreenState();
}

class _MainGameScreenState extends State<MainGameScreen> {
  List questions = [questionModel1, questionModel2, questionModel3];
  QuestionModel questionModel = questionModel1;
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xFFFFA600),
          // image: DecorationImage(
          //   image: AssetImage('assets/images/welcome.jpg'),
          //   // fit: BoxFit.cover,
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100.0,
          ),
          child: Column(
            children: [
              Text(
                "Solve this Question to win",
                style: GoogleFonts.fredokaOne(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //a container for the question and the options
              Container(
                // margin all
                margin: const EdgeInsets.all(50.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Text(
                      questionModel.question,
                      style: GoogleFonts.fredokaOne(
                        color: Colors.white,
                        fontSize: 20.0,
                        // fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    optionsMethod()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  optionTaped(int index) {
    if (index == questionModel.answer) {
      setState(() {
        if (questionNumber < questions.length - 1) {
          questionNumber++;
          questionModel = questions[questionNumber];
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GameOver()),
          );
        }
      });
    }
  }

  Container optionsMethod() {
    return Container(
      padding: const EdgeInsets.only(
        top: 50.0,
      ),
      height: 350,
      child: ListView.builder(
        itemCount: questionModel.options.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => optionTaped(index),
            child: Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                questionModel.options[index],
                style: GoogleFonts.fredokaOne(
                  color: Colors.black,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
