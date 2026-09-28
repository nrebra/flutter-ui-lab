import 'package:flutter/material.dart';

class IndacatorLearn extends StatelessWidget {
  const IndacatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [CenterCircularProgress()]),
      body: LinearProgressIndicator(),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.white,
        strokeWidth: 10,
        value: 0.9,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
