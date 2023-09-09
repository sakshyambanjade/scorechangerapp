import 'package:flutter/material.dart';

void main(){
  runApp(const ScoreChanger());
}

class ScoreChanger extends StatelessWidget {
  const ScoreChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Score App",
      home : ScoreHome(),
    );
  }
}
class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title:Text("Score Changer") ,
          centerTitle: true,
      ),
    );
  }
}