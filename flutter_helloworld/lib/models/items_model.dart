import 'dart:convert';
import 'package:flutter/material.dart';

ItemsModel itemsModelFromJson(String str) =>
    ItemsModel.fromJson(json.decode(str));

// String itemsModelFromJson(ItemsModel data) => json.encode(data.toJson());

class ItemsModel {
  final String itemsId;
  final String name;
  final String price;
  final DateTime createdDate;

  ItemsModel(
      {this.itemsId,
      @required this.name,
      @required this.price,
      this.createdDate});

  // factory ItemsModel.fromJson(Map<String, dynamic> json) {
  //   return ItemsModel(
  //       itemsId: json["id"],
  //       name: json["name"],
  //       price: json["price"].toString(),
  //       createdDate: DateTime.parse(json["createdDate"].toString()));
  // }

  factory ItemsModel.fromJson(List<dynamic> json) {
    return ItemsModel(
        itemsId: json["id"],
        name: json["name"],
        price: json["price"].toString(),
        createdDate: DateTime.parse(json["createdDate"].toString()));
  }
}
