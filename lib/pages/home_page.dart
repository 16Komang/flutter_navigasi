import 'package:flutter/material.dart';
import 'package:flutter_navigasi/models/item.dart';
import '../widgets/listview.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
  Item(name: 'Sugar', price: 5000, code: 'kgns1'),
    Item(name: 'Salt', price: 2000, code: 'kgns2'),
    Item(name: 'Blackpaper', price: 7000, code: 'kgns3'),
    Item(name: 'Origano', price: 9000, code: 'kgns4')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Shopping List"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: MyListView(
            items: items,
            page: '/item',
          ),
        ));
  }
}