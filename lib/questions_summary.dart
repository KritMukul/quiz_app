import 'package:flutter/material.dart';
import 'package:quiz_app/questions_identifier.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionIdentifier(
                    questionIndex: (data['question_index']) as int,
                    isCorrectAnswer:
                        data['chosen_answer'] == data['correct_answer'],
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            (data['question']).toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 243, 255),
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            data['chosen_answer'] as String,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(205, 250, 221, 255),
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(194, 146, 233, 244),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
