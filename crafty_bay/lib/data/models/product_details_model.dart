import 'package:crafty_bay/data/models/product_details_data.dart';

class ProductDetailsModel {
  String? msg;
  List<ProductDetailsData>? productDetailsDataList;

  ProductDetailsModel({this.msg, this.productDetailsDataList});

  ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      productDetailsDataList = <ProductDetailsData>[];
      json['data'].forEach((v) {
        productDetailsDataList!.add(ProductDetailsData.fromJson(v));
      });
    }
  }
}
