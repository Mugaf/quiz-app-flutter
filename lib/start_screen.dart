import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.startQuiz, {
    super.key,
  });
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 200,
              height: 200,
              color: const Color.fromARGB(137, 255, 255, 255)),
          const Padding(
            padding: EdgeInsets.only(top: 70),
            child: Text(
              'Learn Flutter the fun way!',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: OutlinedButton.icon(
                icon: const Icon(Icons.arrow_right_alt_rounded),
                onPressed: startQuiz,
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 9, 16, 113),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                label: const Text(
                  'Start Quiz',
                )),
          )
        ],
      ),
    );
  }
}
