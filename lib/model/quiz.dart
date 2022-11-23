// クイズのクラス
class Quiz {
  String questionText;
  bool answerBool;

  Quiz(this.questionText, this.answerBool);
}

// クイズ関数
class QuizFunction {
  // クイズのインスタンスを配列に代入
  final List<Quiz> questionList = [
    Quiz('タコの足は10本である', false),
    Quiz('ピカチュウは黄色である', true),
  ];

  // 最初のクイズ（配列の最初のindexを取得）
  final int _questionNumber = 0;

  // 最初の画面（0）から何番目のクイズ内容かを取得
  String getQuestionText() {
    return questionList[_questionNumber].questionText;
  }
}
