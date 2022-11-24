import 'package:flutter/material.dart';
import 'package:quiz_app/constants/styles.dart';
import 'package:quiz_app/screens/start_page.dart';

class ResultPage extends StatelessWidget {
  // クイズ画面（画面遷移元）からのデータを受け取る変数
  final List<Container> result;

  // コンストラクタ
  const ResultPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('結果'),

        // デフォルトの戻るボタンを非表示
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'おしまい！',
              textAlign: TextAlign.center,
              style: textStyle,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: result,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 180,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StartPage()),
                  );
                },
                child: const Text('最初に戻る'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
