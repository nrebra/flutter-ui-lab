import 'package:flutter/material.dart';

class ImageLaern extends StatelessWidget {
  const ImageLaern({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: PngImage(path: ImageItems().imagePath),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String imagePath = "assets/apple.png";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(path, fit: BoxFit.fitWidth);
  }
}
