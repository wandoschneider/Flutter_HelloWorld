import 'package:flutter/material.dart';
import 'package:flutter_helloworld/components/items_tile.dart';
import 'package:flutter_helloworld/models/items_model.dart';
import 'package:flutter_helloworld/providers/items_provider.dart';
import 'package:provider/provider.dart';

// class ItemList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Items List'),
//         actions: <Widget>[IconButton(icon: Icon(Icons.add), onPressed: () {})],
//       ),
//       body: ListView.builder(
//           itemCount: _items.length,
//           itemBuilder: (ctx, i) => ItemsTile(_items.elementAt(i))),
//     );
//   }
// }

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(child:
        Consumer<ItemsProvider>(builder: (_, ItemsProvider itemsProvider, __) {
      if (itemsProvider.itemsModel.itemsId.isEmpty) return Text("No Data");
      ItemsModel item = itemsProvider.itemsModel;
      return ListView.builder(
        // itemBuilder: (_, int index) {
        itemCount: 4,
        itemBuilder: (ctx, i) => Text(item.name),
        // }
      );
    }));
  }
}
