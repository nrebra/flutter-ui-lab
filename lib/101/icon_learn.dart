import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  const IconLearnView({super.key});

  final IconSizzes _iconSizzes = const IconSizzes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon Learn')),
      body: Column(
        children: [
          Icon(
            Icons.message_outlined,
            size: _iconSizzes.iconMedium,
            color: const Color.fromARGB(255, 3, 3, 230),
          ),
          const Icon(Icons.delete),
        ],
      ),
    );
  }
}

class IconSizzes {
  const IconSizzes();

  final double iconSmall = 20;
  final double iconMedium = 30;
  final double iconLarge = 40;
}
