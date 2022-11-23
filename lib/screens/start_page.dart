import 'package:flutter/material.dart';
import 'package:quiz_app/constants/styles.dart';
import 'package:quiz_app/screens/quiz_page.dart';

// 起動画面
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('easyクイズアプリ')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '簡単なクイズアプリです。\n ○か×を選択するだけ！\n（全3問）',
              textAlign: TextAlign.center,
              style: textStyle,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 180,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizPage()),
                  );
                },
                child: const Text('スタート！'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
