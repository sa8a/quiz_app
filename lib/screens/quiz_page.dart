import 'package:flutter/material.dart';
import 'package:quiz_app/constants/styles.dart';
import 'package:quiz_app/model/quiz.dart';

// クイズ画面
class QuizPage extends StatelessWidget {
  QuizPage({super.key});

  // インスタンスを生成（new は書かなくてよい）
  // ※変数名の前にある「QuizFunction」はまだ理解できていない
  QuizFunction quizFunction = QuizFunction();

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
                      onPressed: () {},
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
                      onPressed: () {},
                      child: const Text('×', style: quizButtonTextStyle),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
