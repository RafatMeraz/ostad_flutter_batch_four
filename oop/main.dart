import 'encapsulation.dart';

void main() {
  BankAccount rafatsBankAccount = BankAccount('183823-32323-232323-23233', 'Rafat Meraz');
  print(rafatsBankAccount.bankAccountNo);
  print(rafatsBankAccount.accountHolderName);
  // print(rafatsBankAccount.currentBalance);
  print(rafatsBankAccount.getCurrentBalance);
  rafatsBankAccount.bankAccountNo = '34sdfdasfs';
  print(rafatsBankAccount.bankAccountNo);
  rafatsBankAccount.setNewBalance = 34;
  print(rafatsBankAccount.getCurrentBalance);
  print(rafatsBankAccount.tax);
}