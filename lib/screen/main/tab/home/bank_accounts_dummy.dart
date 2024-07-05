import 'dart:collection';

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';
import 'package:flutter/material.dart';

final bankAccountShinhan1 = BankAccount(1, bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 = BankAccount(2, bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan3 = BankAccount(3, bankShinhan, 300000000, accountTypeName: "저축예금");
final bankAccountToss = BankAccount(4, bankTtoss, 5000000);
final bankAccountKakao = BankAccount(5, bankKakao, 7000000, accountTypeName: "입출금통장");
final bankAccountKakao2 = BankAccount(5, bankKakao, 100000000, accountTypeName: "입출금통장");

main() {
   // // 삽입
  // bankAccounts.insert(1, bankAccountKakao);
  //
  // // 위치 이동
  // final temp = bankAccounts.removeAt(4);
  // bankAccounts.insert(0, temp);
  //
  // // 교환
  // bankAccounts.swap(0, 5);
  //
  // // 변환
  // final banks = bankAccounts.map((e) => e.bank).toList();
  //
  // final uniqueBanks = banks.toSet();
  // for(final bank in uniqueBanks){
  //   print(bank.toString());
  // }
  //
  // // 생성
  // final list = [];
  // final set = {bankAccountShinhan1, bankAccountShinhan2};
  // final map = {"shinhan1":bankAccountShinhan1, "shinhan2":bankAccountShinhan2};

  // for(final bank in banks) {
  //   print(bank.toString());
  // }
  // final map = HashMap<String, BankAccount>();
  // map["ttoss"] = bankAccountToss;
  // map["kakao"] = bankAccountKakao;
  // map.putIfAbsent("kakao", () => bankAccountKakao2);
  // if(!map.containsKey("kakao")){
  //   map["kakao"] = bankAccountKakao2;
  // }
  //
  // final ttosAccount = map["ttoss"];
  //
  // for(final account in bankAccounts){
  //   print(account.toString());
  // }

}

//List
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao
];

//Map
final bankMap = {
  "shinhan1": bankAccountShinhan1,
  "shinhan2": bankAccountShinhan2,
};

//Set
final bankSet = {bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan2,
  bankAccountShinhan2,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao};