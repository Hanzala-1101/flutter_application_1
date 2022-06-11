import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final List list;

  const ItemWidget({Key? key, required this.list})
      : assert(list != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
