import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/modules/catalog.dart';
import 'package:flutter_application_1/wedges/Item_Widget.dart';
import 'package:flutter_application_1/wedges/drawer.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int todays = 2003;
  @override
  void initState() {
    super.initState();
    LoadData();
  }

  LoadData() async {
    var catalogjason = await rootBundle.loadString("assets/files/WORK.JSON");
    var decodedjason = jsonDecode(catalogjason);
    var products = decodedjason['workings'];
    ItemModel.product =
        List.from(products).map<Item>((item) => Item.fromMap(item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: ListView.builder(
          itemCount: ItemModel.product.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: ItemModel.product[index],
            );
          }),
      drawer: AppDrawer(),
    );
  }
}
