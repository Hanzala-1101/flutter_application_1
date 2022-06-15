import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/catalog.dart';

String url =
    "https://images.unsplash.com/photo-1655019680534-0838d2870bfd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMzcxODl8MHwxfGFsbHwzfHx8fHx8Mnx8MTY1NTA0ODEzMw&ixlib=rb-1.2.1&q=20&w=40";

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
              onPressed: () async {
          
                    }
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        
        leading: Image.network(url),
        title: Text(item.name),
        
        subtitle: Text(item.blazer.toString()),
        trailing: Text(item.average.toString()),
      ),
    );
  }
}
