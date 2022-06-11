import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppDrawer extends StatelessWidget {
  final imageurl =
      "https://imgs.search.brave.com/skrh1VQIX5O2CmCbFooneMfLSCCP8K2NrgFjsXVIgTw/rs:fit:734:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5G/Q2FjUlJ3dEE2YVla/REtSVTlVdDVBSGFF/eSZwaWQ9QXBp";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName:
                    Text("Hanzala", style: TextStyle(color: Colors.white)),
                accountEmail: Text(
                  "Every days is better",
                  style: TextStyle(color: Colors.white60),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Home page"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.phone),
            title: Text("My Works"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.decrease_indent),
            title: Text("Corrections"),
          ),
        ],
      ),
    );
  }
}
