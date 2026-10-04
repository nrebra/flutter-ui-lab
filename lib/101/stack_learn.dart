import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(color: Colors.red, height: 100),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: const Color.fromARGB(255, 98, 11, 219),
              height: 100,
            ),
          ),
          //positioned 100lük component oluşturur ve stackin en altına yerleştirir. bottom ve right ile konumlandırılır.
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(color: Colors.green, height: 100, width: 100),
          ),
          Positioned.fill(
            top: 100,
            child: Container(
              color: const Color.fromARGB(
                255,
                145,
                238,
                6,
              ).withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
