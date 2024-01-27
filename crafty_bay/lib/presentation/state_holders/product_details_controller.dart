import 'package:crafty_bay/data/models/product_details_data.dart';
import 'package:crafty_bay/data/models/product_details_model.dart';
import 'package:crafty_bay/data/models/response_data.dart';
import 'package:crafty_bay/data/services/network_caller.dart';
import 'package:crafty_bay/data/utility/urls.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  bool _inProgress = false;

  ProductDetailsModel _productDetailsModel = ProductDetailsModel();

  String _errorMessage = '';

  bool get inProgress => _inProgress;

  ProductDetailsData get productDetails =>
      _productDetailsModel.productDetailsDataList!.first;

  String get errorMessage => _errorMessage;

  Future<bool> getProductDetails(int productId) async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    final ResponseData response =
        await NetworkCaller().getRequest(Urls.productDetails(productId));
    if (response.isSuccess) {
      _productDetailsModel =
          ProductDetailsModel.fromJson(response.responseData);
      isSuccess = true;
    } else {
      _errorMessage = response.errorMessage;
    }
    _inProgress = false;
    update();
    return isSuccess;
  }
}
