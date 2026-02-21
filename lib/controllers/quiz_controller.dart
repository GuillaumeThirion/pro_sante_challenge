import '../data/questions_data.dart';

class QuizController {
  int currentIndex = 0;
  int score = 0;

  void answer(int selectedIndex) {
    if (selectedIndex ==
        questions[currentIndex].correctIndex) {
      score++;
    }
    currentIndex++;
  }

  bool get isFinished => currentIndex >= questions.length;
}