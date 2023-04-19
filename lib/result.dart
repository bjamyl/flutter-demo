import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultsScore;
  final VoidCallback resetHandler;
  const Result({
    super.key,
    required this.resultsScore,
    required this.resetHandler,
  });

  String get resultPhrase {
    String resultText;
    if (resultsScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultsScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultsScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
          )
        ],
      ),
    );
  }
}
