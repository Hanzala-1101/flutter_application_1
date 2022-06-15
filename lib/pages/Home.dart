import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/modules/catalog.dart';

import 'package:flutter_application_1/wedges/drawer.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int todays = 2003;
  @override
  void initState() {
    super.initState();
    loaddata();
  }

  loaddata() async {
    var catalogjason = await rootBundle.loadString("assets/files/WORK.JSON");
    var decodedjason = jsonDecode(catalogjason);
    var products = decodedjason['workings'];
    ItemModel.product =
        List.from(products).map<Item>((item) => Item.fromMap(item)).toList();
  }

  var urldata, done = "";

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
    return Scaffold(
      body: Container(
        
      ),
      drawer:const AppDrawer(),);
  }
}
