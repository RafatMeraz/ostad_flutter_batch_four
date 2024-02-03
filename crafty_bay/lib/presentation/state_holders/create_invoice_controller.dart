import 'package:crafty_bay/data/models/payment_method_list_model.dart';
import 'package:crafty_bay/data/services/network_caller.dart';
import 'package:crafty_bay/data/utility/urls.dart';
import 'package:get/get.dart';

class CreateInvoiceController extends GetxController {
  bool _inProgress = true;

  PaymentMethodListModel _paymentMethodListModel = PaymentMethodListModel();

  String _errorMessage = '';

  bool get inProgress => _inProgress;

  PaymentMethodListModel get paymentMethodListModel => _paymentMethodListModel;

  String get errorMessage => _errorMessage;

  Future<bool> createInvoice() async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    final response = await NetworkCaller().getRequest(Urls.createInvoice);
    if (response.isSuccess) {
      _paymentMethodListModel =
          PaymentMethodListModel.fromJson(response.responseData);
      isSuccess = true;
    } else {
      _errorMessage = response.errorMessage;
    }
    _inProgress = false;
    update();
    return isSuccess;
  }
}
