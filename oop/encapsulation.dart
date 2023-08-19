/// Encapsulation
/// private/public
/// setter/write(set) / getter/read(get)

class BankAccount {
  String bankAccountNo;
  String accountHolderName;
  /// private
  double _currentBalance = 0.0;

  BankAccount(this.bankAccountNo, this.accountHolderName);

  /// read/get
  // double getCurrentBalance() {
  //   return _currentBalance;
  // }

  // double get getCurrentBalance {
  //   return _currentBalance;
  // }

  double get getCurrentBalance => _currentBalance;

  /// write/set
  // void setNewBalance(double newBalance) {
  //   _currentBalance = newBalance;
  // }

  void set setNewBalance(double newBalance) {
    // if (newBalance <= 0) {
    //   return;
    // }
    _currentBalance = newBalance;
  }

  double _calculateTax() {
    return (_currentBalance / 100) * 10;
  }

  double get tax => _calculateTax();
}