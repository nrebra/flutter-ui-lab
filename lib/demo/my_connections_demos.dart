import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProductUtility().paddingHorizontal,
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            final model = _items[index];
            return _CategoryCard(model: model);
          },
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({super.key, required this.model});

  final CollectionModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProductUtility().paddingBottom,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: ProductUtility().paddingGeneral,
          child: Column(
            children: [
              Expanded(child: Image.asset(model.imagePath, fit: BoxFit.fill)),
              Padding(
                padding: ProductUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(model.title), Text('${model.price}')],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;

  CollectionModel({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}

class ProductUtility {
  final paddingTop = EdgeInsets.only(top: 10);
  final paddingBottom = EdgeInsets.only(bottom: 20);
  final paddingGeneral = EdgeInsets.all(20.0);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20.0);
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(
        imagePath: 'assets/png/img_collections.png',
        title: 'Car Image',
        price: 20000,
      ),
      CollectionModel(
        imagePath: 'assets/png/img_collections.png',
        title: 'Car Image2',
        price: 40000,
      ),
      CollectionModel(
        imagePath: 'assets/png/img_collections.png',
        title: 'Car Image3',
        price: 30000,
      ),
    ];
  }
}
