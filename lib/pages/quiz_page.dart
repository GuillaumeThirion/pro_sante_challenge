import 'package:flutter/material.dart';
import '../controllers/quiz_controller.dart';
import '../models/question.dart';
import '../widgets/answer_button.dart';
import 'result_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final QuizController controller = QuizController();
  int? selectedIndex;
  bool answered = false;

  Color _difficultyColor(Difficulty difficulty) {
    switch (difficulty) {
      case Difficulty.facile:
        return Colors.green;
      case Difficulty.moyen:
        return Colors.orange;
      case Difficulty.difficile:
        return Colors.red;
    }
  }

  void _handleAnswer(int index) {
    if (answered) return;

    setState(() {
      selectedIndex = index;
      answered = true;
    });

    Future.delayed(const Duration(seconds: 1), () {
      controller.answer(index);

      if (!mounted) return;

      if (controller.isFinished) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => ResultPage(
              score: controller.score,
              total: controller.questions.length,
            ),
          ),
        );
      } else {
        setState(() {
          selectedIndex = null;
          answered = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = controller.questions[controller.currentIndex];

    return Scaffold(
      appBar: AppBar(title: const Text("Quiz")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: _difficultyColor(question.difficulty),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                question.difficulty.name.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
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
                isCorrect: index == question.correctIndex,
                isSelected: index == selectedIndex,
                showResult: answered,
              ),
            ),
          ],
        ),
      ),
    );
  }
}