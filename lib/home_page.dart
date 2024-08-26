import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 235, 205, 255),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Learn Flutter the fun Way!',
              style: GoogleFonts.ubuntu(
                  color: const Color.fromARGB(255, 245, 217, 255), fontSize: 25),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 240, 203, 250),
                shape: const LinearBorder(),
              ),
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'Start Quiz',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
