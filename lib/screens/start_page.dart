import 'package:flutter/material.dart';

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
            const Text('簡単なクイズアプリです。'),
            const Text('○か×を選択するだけ！'),
            const SizedBox(height: 30),
            SizedBox(
              width: 180,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {},
                child: const Text('スタート！'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
