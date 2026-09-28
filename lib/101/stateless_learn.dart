import 'package:flutter/material.dart';

class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({super.key});
  final titleWidget = const TitleWidget(title: 'Baslik 1');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          titleWidget,
          const TitleWidget(title: 'Baslik 2'),
          const TitleWidget(title: 'Baslik 3'),
          const TitleWidget(title: 'Baslik 4'),
          const TitleWidget(title: 'Baslik 5'),
          _SizedBowWidget(),
        ],
      ),
    );
  }

  SizedBox _SizedBowWidget() => SizedBox(height: 20);
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headlineMedium);
  }
}
