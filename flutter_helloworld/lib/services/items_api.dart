import 'package:flutter_helloworld/models/items_model.dart';
import 'package:http/http.dart';

class ItemsApi {
  Client _client = Client();

  Future<ItemsModel> fecthAllItems() async {
    Response response = await _client.get(Uri.http('localhost:80', 'items'));

    if (response.statusCode == 200) {
      return itemsModelFromJson(response.body);
    }
    throw Exception("Failed to Load Items!");
  }
}
