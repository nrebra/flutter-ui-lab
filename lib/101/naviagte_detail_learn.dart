import 'package:flutter/material.dart';

class NavigateDetailLearnDartState extends StatefulWidget {
  const NavigateDetailLearnDartState({super.key});

  @override
  State<NavigateDetailLearnDartState> createState() =>
      _NavigateLearnDartStateState();
}

class _NavigateLearnDartStateState extends State<NavigateDetailLearnDartState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          icon: Icon(Icons.check),
          label: Text('Onayla'),
        ),
      ),
    );
  }
}
