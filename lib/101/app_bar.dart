import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});
  final String title = 'App Bar Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.chevron_left),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,

        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
          const Center(child: CircularProgressIndicator.adaptive()),
        ],
      ),
    );
  }
}

class SystemOverlayStyle {
}
