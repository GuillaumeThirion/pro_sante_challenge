import 'package:flutter/material.dart';
import '../controllers/quiz_controller.dart';
import '../data/questions_data.dart';
import '../widgets/answer_button.dart';
import 'result_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final QuizController controller = QuizController();

  void _handleAnswer(int index) {
    controller.answer(index);

    if (controller.isFinished) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => ResultPage(score: controller.score),
        ),
      );
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[controller.currentIndex];

    return Scaffold(
      appBar: AppBar(title: const Text("Quiz")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              question.text,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ...List.generate(
              question.answers.length,
                  (index) => AnswerButton(
                text: question.answers[index],
                onTap: () => _handleAnswer(index),
              ),
            )
          ],
        ),
      ),
    );
  }
}