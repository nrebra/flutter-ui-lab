import 'package:flutter/material.dart';
import 'package:flutter_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  PostModel7 user8 = PostModel7(body: 'a');
  @override
  void initState() {
    super.initState();
    final user1 = PostModel1()
      ..userId = 1
      ..id = 1
      ..title = "title"
      ..body = "body";

    final user2 = PostModel2(
      user1.userId ?? 0,
      user1.id ?? 0,
      user1.title ?? "",
      user1.body ?? "",
    );

    final user3 = PostModel3(1, 1, "title", "body");

    //localde ise
    final user4 = PostModel4(userId: 1, id: 1, title: "title", body: "body");

    final user5 = PostModel5(userId: 1, id: 1, title: "title", body: "body");
    user5.userId;

    final user6 = PostModel6(userId: 1, id: 1, title: "title", body: "body");

    //serviste kullanıcaksan en mantıklısı bu
    final user7 = PostModel7();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user8 = PostModel7(title: 'title');
          });
        },
      ),
      appBar: AppBar(title: Text(user8.title ?? ' Not any data')),
    );
  }
}
