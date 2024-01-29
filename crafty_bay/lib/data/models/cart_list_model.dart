import 'package:crafty_bay/data/models/cart_item.dart';

class CartListModel {
  String? msg;
  List<CartItem>? cartItemList;

  CartListModel({this.msg, this.cartItemList});

  CartListModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      cartItemList = <CartItem>[];
      json['data'].forEach((v) {
        cartItemList!.add(CartItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    if (cartItemList != null) {
      data['data'] = cartItemList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
