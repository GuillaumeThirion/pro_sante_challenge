enum Difficulty { facile, moyen, difficile }

class Question {
  final String text;
  final List<String> answers;
  final int correctIndex;
  final Difficulty difficulty;

  Question({
    required this.text,
    required this.answers,
    required this.correctIndex,
    required this.difficulty,
  });
}