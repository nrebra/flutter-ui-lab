import 'package:flutter/material.dart';

class ButonLearnView extends StatelessWidget {
  const ButonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Learn')),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith((
                Set<WidgetState> states,
              ) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.red;
                }
                return Colors.white;
              }),
              padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
            ),
            child: const Text('Kaydet', style: TextStyle(color: Colors.red)),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            child: const Text('Elevated Button'),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add_alert),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(
                color: Color.fromARGB(255, 89, 54, 244),
                width: 2,
              ),
            ),
            onPressed: () {},
            child: const Text('Outlined Button'),
          ),
          InkWell(onTap: () {}, child: const Text('InkWell')),
          Container(height: 200, color: Colors.white),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 9, 0, 0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),

            child: Padding(
              padding: EdgeInsetsGeometry.directional(
                start: 20,
                end: 20,
                top: 10,
                bottom: 10,
              ),
              child: Text(
                'Place Hidden',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: const Color.fromARGB(255, 240, 236, 236),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
