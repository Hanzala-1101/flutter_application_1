// ignore_for_file: prefer_const_constructors
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  // var done = "https://wallpapercave.com/wp/wp2722928.jpg";
  var urldata;
  
  String done="";

  void getPhoto() async {
    var url = Uri.parse(
        "https://api.unsplash.com/photos/?client_id=WWsod9MiUmyfN--d2Zrx3_zrofyyTWaUaW3naEZhsco");
    var res = await http.get(url);
    if (!mounted) return;
    setState(() {
      urldata = jsonDecode(res.body);
    });
      done = urldata.elementAt(1)['urls']['small'];
  }

  @override
  Widget build(BuildContext context) {
    getPhoto();
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
                backgroundImage: NetworkImage(done),
              ),
            )),
        ListTile(
          leading: Icon(CupertinoIcons.home),
          title: Text(
            "Home page",
            textScaleFactor: 1.2,
          ),
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
        ));
  }
}
