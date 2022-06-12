import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/catalog.dart';
import 'package:flutter_application_1/wedges/Item_Widget.dart';
import 'package:flutter_application_1/wedges/drawer.dart';

class HomePage extends StatelessWidget {
  final int todays = 2003;
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(5, (index) => ItemModel.Product[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          }),
      drawer: AppDrawer(),
    );
  }
}
