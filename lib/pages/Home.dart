import 'package:flutter/material.dart';
import 'package:flutter_application_1/wedges/Item_widgit.dart';
import 'package:flutter_application_1/wedges/drawer.dart';

class HomePage extends StatelessWidget {
  final int todays = 2003;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ItemWidget(
              list: [index],
            );
          },
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
