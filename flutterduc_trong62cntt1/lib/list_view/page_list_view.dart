import 'dart:math';
import 'package:flutter/material.dart';

List<String> list =[
  "Xoai", "Coc", "Ga", "Vit", "Heo", "Bo", "Keo", "Dua", "Cam", "Coc", "Oi", "Man", "Toe", "1", "2","3"
];

class PageListView extends StatelessWidget {
  const PageListView({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My List View"),
        ),
        body: ListView.separated
          (itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.storefront_outlined),
          title: Text("${list[index]}"),
          trailing: Text("${Random().nextInt(100)*1000} dong"),
          subtitle: Text("Trai cay dac biet thom ngon"),
        ),
            separatorBuilder: (context, index) => Divider(thickness: 2),
            itemCount: list.length,
        ),
    );
  }
}
