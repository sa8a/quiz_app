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
    Quiz('アンパンマンは顔が濡れると力が出ない', true),
    Quiz('桑原は霊剣の使い手だ', true),
    Quiz('ルフィはメラメラの実を食べた', false),
  ];

  // 最初のクイズ（配列の最初のindexを取得）
  int _questionNumber = 0;

  // 最初の画面（0）から何番目のクイズ内容かを取得
  String getQuestionText() {
    return questionList[_questionNumber].questionText;
  }

  // 次の質問へいく関数
  void nextQiestion() {
    if (_questionNumber + 1 < questionList.length) {
      _questionNumber++;
    }
  }

  // クイズの答えを返す関数
  bool getCorrectAnswer() {
    return questionList[_questionNumber].answerBool;
  }

  // クイズが残っているかを確認する関数（次のクイズがなければtrueを返す）
  bool isFinished() {
    bool isFin;
    if (_questionNumber + 1 < questionList.length) {
      isFin = false;
    } else {
      isFin = true;
    }
    return isFin;
  }

  void resetQuestion() {
    _questionNumber = 0;
  }
}
