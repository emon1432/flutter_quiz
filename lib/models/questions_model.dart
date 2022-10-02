class QuestionModel {
  String question;
  List<String> options;
  int answer;

  QuestionModel(this.question, this.options, this.answer);
}

QuestionModel questionModel1 = QuestionModel(
  "What is the capital of Bangladesh?",
  ["Dhaka", "Khulna", "Chittagong", "Rajshahi"],
  0,
);

QuestionModel questionModel2 = QuestionModel(
  "What is the national animal of Bangladesh?",
  ["Deer", "Elephant", "Cow", "Tiger"],
  3,
);

QuestionModel questionModel3 = QuestionModel(
  "What is the national flower of Bangladesh?",
  ["Rose", "Lotus", "Sunflower", "Jasmine"],
  1,
);
