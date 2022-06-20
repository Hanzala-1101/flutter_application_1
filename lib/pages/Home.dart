// ignore_for_file: file_names
import 'package:flutter_application_1/modules/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_application_1/wedges/Item_Widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/wedges/drawer.dart';
import 'package:flutter_application_1/wedges/theme.dart';
import 'dart:convert';
// import 'package:http/http.dart' as http;

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
    ItemModel.workings =
        List.from(products).map<Item>((item) => Item.fromMap(item)).toList();
  }

  // var urldata, done = "";

  // void getPhoto() async {
  //   var url = Uri.parse(
  //       "https://api.unsplash.com/photos/?client_id=WWsod9MiUmyfN--d2Zrx3_zrofyyTWaUaW3naEZhsco");
  //   var res = await http.get(url);
  //   if (!mounted) return;
  //   setState(() {
  //     urldata = jsonDecode(res.body);
  //   });
  //   done = urldata.elementAt(1)['urls']['small'];
  // }

  @override
  Widget build(BuildContext context) {
    // getPhoto();
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const CatalogHeader(),
          if (ItemModel.workings.isNotEmpty)
            CatalogList().expand()
          else
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                ])
        ]),
      ),
      drawer: const AppDrawer(),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Ecomerce app".text.xl3.color(Mytheme.greenish).bold.make(),
        "rehan pagal".text.color(Mytheme.lightbluesh).xl3.make(),
      ],
    );
  }
}

// ignore: use_key_in_widget_constructors
class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: ItemModel.workings.length,
        itemBuilder: (context, index) {
          final catalog = ItemModel.workings[index];
          return CatalogItem(catalog: catalog);
        }).p8().py12();
  }
}

class CatalogItem extends StatelessWidget {
  final catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Expanded(
          child: Column(children: [
            Text(catalog.blazer.toString()),
            Text(catalog.name),
            Text(catalog.id.toString()),
            Text(catalog.average.toString())
          ]),
        )
      ],
    )).blue100.square(100).py12.make();
  }
}
