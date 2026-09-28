import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});

  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: CustomFootButton(title: title),
        ),
      ),
    );
  }
}

mixin ColorsUtily {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

mixin PaddingUtilty {
  final normalPadding = EdgeInsets.all(8.0);
}

class CustomFootButton extends StatelessWidget with ColorsUtily, PaddingUtilty {
  CustomFootButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: redColor,
        shape: const StadiumBorder(),
      ),
      onPressed: () {},
      child: Padding(
        padding: normalPadding,
        child: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(color: whiteColor),
        ),
      ),
    );
  }
}
