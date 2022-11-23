// クイズのクラス
class Quiz {
  String questionText;
  bool answerBool;

  Quiz(this.questionText, this.answerBool);
}

// クイズ関数
class QuizFunction {
  // クイズのインスタンス生成
  final List<Quiz> questionList = [
    Quiz('タコの足は10本である', false),
    Quiz('ピカチュウは黄色である', true),
  ];
}
