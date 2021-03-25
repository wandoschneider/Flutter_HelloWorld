import 'package:flutter/material.dart';
import 'package:flutter_helloworld/models/items_model.dart';
import 'package:flutter_helloworld/services/items_api.dart';

class ItemsProvider with ChangeNotifier {
  ItemsModel _itemsModel = ItemsModel(name: null, price: null);
  ItemsApi _itemsApi = ItemsApi();

  ItemsModel get itemsModel => _itemsModel;

  set itemsModel(ItemsModel itemsModel) {
    _itemsModel = itemsModel;
    notifyListeners();
  }

  Future<void> getAllItems() async {
    itemsModel = await _itemsApi.fecthAllItems();
  }
}
