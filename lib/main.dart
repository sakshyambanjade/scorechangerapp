import 'package:flutter/material.dart';

void main() {
  runApp(const ScoreChanger());
}

class ScoreChanger extends StatelessWidget {
  const ScoreChanger({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Score App",
      debugShowCheckedModeBanner: false, // Move this to the MaterialApp constructor
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int score = 0;

  void increaseScore() {
    setState(() {
      score++;
    });
  }

  void decreaseScore() {
    setState(() {
      score--;
    });
  }

  void resetScore() {
    setState(() {
      score = 0;
    });


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Score Changer"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: Text(
                "Score Is",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                ),
              ),
            ),
            Center(
              child: Text(
                score.toString(),
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 75,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: increaseScore, // Add this onPressed callback
              child: const Text('Increase'),
            ),
            ElevatedButton(
              onPressed: decreaseScore, // Add this onPressed callback
              child: const Text('Decrease'),
            ),
            ElevatedButton(
              onPressed: resetScore,
              child: const Text('Reset'),
            ),
          ],
        ),
      );
    }
  }
}