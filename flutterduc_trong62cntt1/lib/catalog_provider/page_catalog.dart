import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'provider_catalog.dart';

class PageCatalog extends StatelessWidget {
  const PageCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Catalog"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Consumer<Catalog>(
          builder: (context, catalog, child) => ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.storefront_outlined),
                title: Text("${catalog.matHang[index]}"),
                trailing: catalog.ktMatHangTrongGio(index)?
                Container(width: 50,child: Icon(Icons.check));
                TextButton(
                  onTap: ,
              )
              );
            },
            separatorBuilder: (context, index) => Divider(thickness: 1,),
            itemCount: catalog.matHangs.length
          ),
        ),
      ),
    );
  }
}
