import 'package:flutter/material.dart';
import 'package:quiz_app/constants/styles.dart';
import 'package:quiz_app/model/quiz.dart';
import 'package:quiz_app/screens/result_page.dart';

// クイズ画面
class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // インスタンスを生成（new は書かなくてよい）
  // 変数の型：変数の型はintやchar、object等がありますが、今回はobject型（クラスを使うときの型）のため、int等と異なり、変数の型=クラス名となります。
  QuizFunction quizFunction = QuizFunction();

  // スコアの配列（解答するたびに中身が追加されるようになる）
  List<Container> quizScore = [];

  void _checkedAnswer(bool getAnswer) {
    // ボタン押した時のboolを取得できたか確認
    // print(getAnswer);

    // クイズの解答（事前に登録したデータ）を取得
    bool corrctAnswer = quizFunction.getCorrectAnswer();

    setState(() {
      if (quizFunction.isFinished()) {
        // クイズが残っていない場合

        // クイズ内容を最初に戻す
        quizFunction.resetQuestion();

        // 結果画面に遷移
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ResultPage(result: quizScore)));

        // 解答の配列を初期化
        // quizScore = [];
      } else {
        // クイズが残っている場合

        // 押したボタンと答えが正しいかを確認してスコア配列へ追加
        if (getAnswer == corrctAnswer) {
          // print('正解');
          quizScore.add(
            Container(
              child: Row(
                children: [
                  Text('問${(quizScore.length + 1).toString()}'),
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          );
        } else {
          // print('不正解');
          quizScore.add(
            Container(
              child: Row(
                children: [
                  Text('問${(quizScore.length + 1).toString()}'),
                  const Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          );
        }

        // 次の質問に移る関数
        quizFunction.nextQiestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('クイズ')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  // クイズ内容を表示
                  quizFunction.getQuestionText(),
                  style: textStyle,
                ),
                const SizedBox(height: 80),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[400],
                      ),
                      onPressed: () {
                        _checkedAnswer(true);
                      },
                      child: const Text('○', style: quizButtonTextStyle),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[400],
                      ),
                      onPressed: () {
                        _checkedAnswer(false);
                      },
                      child: const Text('×', style: quizButtonTextStyle),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: quizScore,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
