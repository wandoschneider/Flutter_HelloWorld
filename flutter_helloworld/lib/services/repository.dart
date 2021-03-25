import 'package:flutter/material.dart';
import 'package:flutter_helloworld/providers/items_provider.dart';
import 'package:provider/provider.dart';

class Repository {
  Future<void> getAllItems(BuildContext context) async {
    ItemsProvider itemsProvider = Provider.of(context, listen: false);
    await itemsProvider.getAllItems();
  }
}
