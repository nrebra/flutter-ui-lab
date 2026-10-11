//bir ekran olcak
//3 buton olcak ve bunlara basınca renk değişmimi olcak
//secili olan buton selected icon olsun

import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key, required this.initialColor});
  final Color? initialColor;
  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backgroundColor = Colors.transparent;
  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor;
  }

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  void didUpdateWidget(covariant ColorDemosView oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      _changeBackgroundColor(widget.initialColor ?? Colors.transparent);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOntap,
        items: [
          BottomNavigationBarItem(
            icon: _colorContainer(color: Colors.green),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _colorContainer(color: Colors.blue),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: _colorContainer(color: Colors.red),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }

  void _colorOntap(int value) {
    if (value == _SelectedColor.green.index) {
      _changeBackgroundColor(Colors.green);
    } else if (value == _SelectedColor.blue.index) {
      _changeBackgroundColor(Colors.blue);
    } else if (value == _SelectedColor.red.index) {
      _changeBackgroundColor(Colors.red);
    }
  }
}

enum _SelectedColor { green, blue, red }

class _colorContainer extends StatelessWidget {
  const _colorContainer({Key? key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
