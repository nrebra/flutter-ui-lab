import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_%C4%B1mage.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final double cardHeight = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Demo')),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(bottom: cardHeight, child: RandomImage()),

                Positioned(
                  height: 50,
                  width: 200,
                  bottom: 0,

                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 6),
        ],
      ),
    );
  }
}
