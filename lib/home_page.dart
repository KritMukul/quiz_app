import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(context) {
    return const GradientContainer(
      [
        Color.fromARGB(255, 43, 9, 101),
        Color.fromARGB(255, 52, 35, 141),
      ],
    );
  }
}
