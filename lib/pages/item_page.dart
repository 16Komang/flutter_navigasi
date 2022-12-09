import 'package:flutter/material.dart';
import 'package:flutter_navigasi/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
        appBar: AppBar(
          title: Text("My List: " + itemArgs.name),
        ),
        body: Center(
            child: Text("Name: " +
                itemArgs.name +
                "\nPrice: Rp. " +
                itemArgs.price.toString() +
                "\nFood Code: " +
                itemArgs.code)));
  }
}