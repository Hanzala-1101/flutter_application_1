import 'package:flutter/material.dart';
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
        child: Container(
          child: Text("This is my rehan app $todays"),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
