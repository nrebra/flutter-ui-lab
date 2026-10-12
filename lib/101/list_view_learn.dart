import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Text(
            'data',
            style: Theme.of(context).textTheme.headlineLarge,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          Container(color: Colors.red, height: 200),
          Divider(color: Colors.black),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green, width: 100),
                Container(
                  color: const Color.fromARGB(255, 139, 16, 131),
                  width: 200,
                ),
                Container(
                  color: const Color.fromARGB(255, 176, 238, 19),
                  width: 300,
                ),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),

          _ListDemoState(),
        ],
      ),
    );
  }
}

class _ListDemoState extends StatefulWidget {
  const _ListDemoState({super.key});

  @override
  State<_ListDemoState> createState() => __ListDemoStateState();
}

class __ListDemoStateState extends State<_ListDemoState> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
