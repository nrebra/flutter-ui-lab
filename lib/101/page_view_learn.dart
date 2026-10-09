import 'package:flutter/material.dart';
import 'package:flutter_learn/101/icon_learn.dart';
import 'package:flutter_learn/101/image_learn.dart';
import 'package:flutter_learn/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),

      body: PageView(
        padEnds: false,
        controller: PageController(viewportFraction: 0.8),
        children: [ImageLaern(), IconLearnView(), StackLearn()],
      ),
    );
  }
}

class SteakLearn {}
