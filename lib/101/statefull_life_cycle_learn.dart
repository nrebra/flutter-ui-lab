import 'package:flutter/material.dart';

class StatefullLifecycleLearn extends StatefulWidget {
  const StatefullLifecycleLearn({super.key, required this.message});
  final String message;
  @override
  State<StatefullLifecycleLearn> createState() =>
      _StatefullLifecycleLearnState();
}

class _StatefullLifecycleLearnState extends State<StatefullLifecycleLearn> {
  String _message = '';
  late final bool _isOdd;
  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computedName();
  }

  void _computedName() {
    if (_isOdd) {
      _message += ' Tek';
    } else {
      _message += ' Çift';
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message)),
      body: Center(
        child: _isOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(onPressed: () {}, child: Text(_message)),
      ),
    );
  }
}
