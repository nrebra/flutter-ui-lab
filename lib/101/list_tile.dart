import 'package:flutter/material.dart';
import 'package:flutter_learn/core/random_%C4%B1mage.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: RandomImage(),
                  onTap: () {},
                  subtitle: Center(child: Text('How do you use your card')),
                  leading: Icon(Icons.money),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
