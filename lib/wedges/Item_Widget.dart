import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/catalog.dart';

String url =
    "https://images.unsplash.com/photo-1654886848152-93c1baed9e14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=775&q=80";
String url1 =
    "https://images.unsplash.com/photo-1654912911907-f0a65a5c0fb0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80";

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Color(152496321475),
      elevation: 5.0,
      child: ListTile(
        onTap: () {
          final snackBar = SnackBar(
            content: const Text('have a good time'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Bhag pagal'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        leading: Image.network(url),
        title: Text(item.name),
        subtitle: Text(item.blazer.toString()),
        trailing: Text(item.average),
      ),
    );
  }
}
