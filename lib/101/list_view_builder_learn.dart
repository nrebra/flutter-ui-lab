import 'package:flutter/material.dart';

class ListBuilderLearn extends StatefulWidget {
  const ListBuilderLearn({super.key});

  @override
  State<ListBuilderLearn> createState() => _ListBuilderLearnState();
}

class _ListBuilderLearnState extends State<ListBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(color: const Color.fromARGB(255, 249, 248, 248));
        },
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Image.network('https://picsum.photos/200/300')),

                Text(
                  '$index',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}



