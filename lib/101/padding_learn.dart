import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Padding Learn')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(color: Colors.red, height: 100, width: 100),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(color: Colors.blue, height: 100),
          ),
          
        ],
      ),
    );
  }
}
class ProjectPadding{

  static const pagePadding = EdgeInsets.all(10.0);
}