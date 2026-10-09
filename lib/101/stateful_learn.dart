import 'package:flutter/material.dart';
import 'package:flutter_learn/product/counter_hello_button.dart';
import 'package:flutter_learn/product/language/language_items.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int countValue = 0;

  void incrementCounter() {
    setState(() {
      countValue++;
    });
  }

  void deincrementCounter() {
    setState(() {
      countValue--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LanguageItems.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          deincrementButton(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: incrementButton(),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              countValue.toString(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const Placeholder(),
          CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        deincrementCounter();
      },
      child: const Icon(Icons.remove),
    );
  }

  FloatingActionButton deincrementButton() => FloatingActionButton(
    onPressed: () {
      incrementCounter();
    },
    child: const Icon(Icons.add),
  );
}
