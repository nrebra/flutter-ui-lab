import 'package:flutter/material.dart';
import 'package:flutter_learn/202/tab_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        tabBarTheme: const TabBarThemeData(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
        listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color.fromARGB(0, 250, 7, 7),
          elevation: 0,
        ),
      ),
      home: TabLearn(),
    );
  }
}
