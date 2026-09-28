import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/101/image_learn.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Create your first note';
    final createNote = 'Create a Note';
    final importNote = 'Import Note';
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [IconApp(iconName: Icons.arrow_back_ios_new)],
        title: Text(
          "Note Demos",
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(path: ImageItems().imagePath),
            titleWidget(title: title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: subTitleWidget(),
            ),
            const Spacer(),

            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                height: ButtonHeights.buttonNormalHeiht,

                child: Center(
                  child: Text(
                    createNote,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                importNote,
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class subTitleWidget extends StatelessWidget {
  const subTitleWidget({super.key, this.textAlign = TextAlign.center});
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    final text = Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
      "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight(500),
      ),
    );
    return text;
  }
}

class titleWidget extends StatelessWidget {
  const titleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class IconApp extends StatelessWidget {
  const IconApp({super.key, required this.iconName});
  final IconData iconName;
  final double iconSize = 30;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(iconName, size: iconSize),
    );
  }
}

class PaddingItems {
  static final EdgeInsets horizontalPadding = const EdgeInsets.symmetric(
    horizontal: 20,
  );
  static final EdgeInsets verticalPadding = const EdgeInsets.symmetric(
    vertical: 10,
  );
}

class ButtonHeights {
  static const double buttonNormalHeiht = 50;
}
