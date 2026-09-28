import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Container(color: Colors.red),
          ),
          SizedBox.shrink(),
          SizedBox.square(dimension: 50, child: Container(color: Colors.green)),

          Container(
            constraints: const BoxConstraints(maxWidth: 200, maxHeight: 200),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectContainerDecoration(),
          ),
        ],
      ),
    );
  }
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
    : super(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 136, 54, 244),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 230, 227, 235),
            Color.fromARGB(255, 136, 54, 244),
            Color.fromARGB(255, 8, 1, 17),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 196, 238, 8),
            offset: Offset(0.1, 1),
            blurRadius: 12,
          ),
        ],
      );
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: const Color.fromARGB(255, 136, 54, 244),
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 230, 227, 235),
        Color.fromARGB(255, 136, 54, 244),
        Color.fromARGB(255, 8, 1, 17),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    boxShadow: const [
      BoxShadow(
        color: Color.fromARGB(255, 196, 238, 8),
        offset: Offset(0.1, 1),
        blurRadius: 12,
      ),
    ],
  );
}
