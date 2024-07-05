import 'vo_bank.dart';

class BankAccount {
  final int userId;
  final Bank bank;
  int balance;
  final String? accountTypeName;

  BankAccount(
    this.userId,
    this.bank,
    this.balance, {
    this.accountTypeName,
  });
}
