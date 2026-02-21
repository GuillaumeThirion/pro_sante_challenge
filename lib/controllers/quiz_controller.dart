import '../data/questions_data.dart';
import '../models/question.dart';

class QuizController {
  int currentIndex = 0;
  int score = 0;

  late final List<Question> _questions;

  QuizController() {
    _questions = _generateProgressiveQuiz();
  }

  List<Question> get questions => _questions;

  List<Question> _generateProgressiveQuiz() {
    final faciles = questionsData
        .where((q) => q.difficulty == Difficulty.facile)
        .toList()
      ..shuffle();

    final moyens = questionsData
        .where((q) => q.difficulty == Difficulty.moyen)
        .toList()
      ..shuffle();

    final difficiles = questionsData
        .where((q) => q.difficulty == Difficulty.difficile)
        .toList()
      ..shuffle();

    return [
      ...faciles,
      ...moyens,
      ...difficiles,
    ];
  }

  void answer(int selectedIndex) {
    if (selectedIndex ==
        _questions[currentIndex].correctIndex) {
      score++;
    }
    currentIndex++;
  }

  bool get isFinished => currentIndex >= _questions.length;
}