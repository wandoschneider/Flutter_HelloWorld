import 'package:flutter/material.dart';
import 'package:flutter_helloworld/models/items_model.dart';
import 'package:intl/intl.dart';

class ItemsTile extends StatelessWidget {
  final ItemsModel item;

  const ItemsTile(this.item);

  @override
  Widget build(BuildContext context) {
    final avatar = CircleAvatar(child: Icon(Icons.person));
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    return ListTile(
      leading: avatar,
      title: Text(item.name),
      subtitle: Text(formatter.format(item.createdDate)),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.orange,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
