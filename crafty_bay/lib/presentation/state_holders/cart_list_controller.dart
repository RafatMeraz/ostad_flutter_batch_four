import 'package:crafty_bay/data/models/cart_list_model.dart';
import 'package:crafty_bay/data/services/network_caller.dart';
import 'package:crafty_bay/data/utility/urls.dart';
import 'package:get/get.dart';

class CartListController extends GetxController {
  bool _inProgress = false;

  String _errorMessage = '';

  CartListModel _cartListModel = CartListModel();

  bool get inProgress => _inProgress;

  String get errorMessage => _errorMessage;

  CartListModel get cartListModel => _cartListModel;

  Future<bool> getCartList() async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    final response = await NetworkCaller().getRequest(
      Urls.cartList,
    );
    if (response.isSuccess) {
      _cartListModel = CartListModel.fromJson(response.responseData);
      isSuccess = true;
    } else {
      _errorMessage = response.errorMessage;
    }
    _inProgress = false;
    update();
    return isSuccess;
  }
}
