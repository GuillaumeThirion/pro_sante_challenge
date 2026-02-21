import '../models/question.dart';

final List<Question> questionsData = [

  // ======================
  // FACILE
  // ======================

  Question(
    text: "Quel organe pompe le sang dans le corps ?",
    answers: ["Le foie", "Le cœur", "Le poumon", "Le rein"],
    correctIndex: 1,
    difficulty: Difficulty.facile,
  ),

  Question(
    text: "Combien de litres d'eau est-il conseillé de boire par jour ?",
    answers: ["1L", "2L", "4L", "6L"],
    correctIndex: 1,
    difficulty: Difficulty.facile,
  ),

  Question(
    text: "Quelle vitamine obtient-on principalement grâce au soleil ?",
    answers: ["Vitamine A", "Vitamine C", "Vitamine D", "Vitamine B12"],
    correctIndex: 2,
    difficulty: Difficulty.facile,
  ),

  Question(
    text: "Combien d'heures de sommeil sont recommandées pour un adulte ?",
    answers: ["4-5h", "6-8h", "10-12h", "3-4h"],
    correctIndex: 1,
    difficulty: Difficulty.facile,
  ),

  Question(
    text: "Quel aliment est riche en protéines ?",
    answers: ["Pain", "Riz", "Poulet", "Sucre"],
    correctIndex: 2,
    difficulty: Difficulty.facile,
  ),

  // ======================
  // MOYEN
  // ======================

  Question(
    text: "Quel est le rôle principal des globules rouges ?",
    answers: [
      "Transporter l'oxygène",
      "Combattre les infections",
      "Produire des hormones",
      "Digérer les aliments"
    ],
    correctIndex: 0,
    difficulty: Difficulty.moyen,
  ),

  Question(
    text: "Quelle est la tension artérielle normale moyenne ?",
    answers: ["8/5", "10/6", "12/8", "15/10"],
    correctIndex: 2,
    difficulty: Difficulty.moyen,
  ),

  Question(
    text: "Quel organe filtre le sang ?",
    answers: ["Cœur", "Foie", "Reins", "Estomac"],
    correctIndex: 2,
    difficulty: Difficulty.moyen,
  ),

  Question(
    text: "Quel est l'indice de masse corporelle (IMC) normal ?",
    answers: ["10-15", "18.5-24.9", "25-30", "30-40"],
    correctIndex: 1,
    difficulty: Difficulty.moyen,
  ),

  Question(
    text: "Quel nutriment fournit principalement de l'énergie ?",
    answers: ["Protéines", "Vitamines", "Glucides", "Minéraux"],
    correctIndex: 2,
    difficulty: Difficulty.moyen,
  ),

  // ======================
  // DIFFICILE
  // ======================

  Question(
    text: "Quel est le nom scientifique du manque d'oxygène dans les tissus ?",
    answers: ["Anémie", "Hypoxie", "Ischémie", "Hypercapnie"],
    correctIndex: 1,
    difficulty: Difficulty.difficile,
  ),

  Question(
    text: "Quelle hormone régule la glycémie ?",
    answers: ["Adrénaline", "Insuline", "Cortisol", "Testostérone"],
    correctIndex: 1,
    difficulty: Difficulty.difficile,
  ),

  Question(
    text: "Combien de vertèbres composent la colonne vertébrale humaine ?",
    answers: ["24", "26", "33", "36"],
    correctIndex: 2,
    difficulty: Difficulty.difficile,
  ),

  Question(
    text: "Quel est le principal neurotransmetteur inhibiteur du système nerveux central ?",
    answers: ["Dopamine", "Sérotonine", "GABA", "Acétylcholine"],
    correctIndex: 2,
    difficulty: Difficulty.difficile,
  ),

  Question(
    text: "Quel est le nom de la membrane qui entoure le cœur ?",
    answers: ["Plèvre", "Péricarde", "Péritoine", "Endocarde"],
    correctIndex: 1,
    difficulty: Difficulty.difficile,
  ),
];