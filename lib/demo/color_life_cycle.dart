import 'package:flutter/material.dart';
import 'package:flutter_learn/demo/color_demos_view.dart';

class ColorLifecycleView extends StatefulWidget {
  const ColorLifecycleView({super.key});

  @override
  State<ColorLifecycleView> createState() => _ColorLifecycleViewState();
}

class _ColorLifecycleViewState extends State<ColorLifecycleView> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _backgroundColor = Colors.pink;
              });
            },
            icon: const Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(child: ColorDemosView(initialColor: _backgroundColor)),
        ],
      ),
    );
  }
}
