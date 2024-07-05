import 'dart:async';

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/ch04_practice/fxDart.dart';
import 'package:fast_app_base/screen/main/tab/home/bank_accounts_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_user.dart';

main() async {
  //Functional Programming
  // 프로그래밍 방법을 부르는 이름들
  // 절차적 프로그래밍 - 명령형 프로그래밍
  // Accounts => Users => User.name => 출력

  // final accounts = await getAccounts();
  // final list = <String>[];
  // for (final account in accounts) {
  //   final user = await getUser(account.userId);
  //   list.add(user.name);
  // }
  // print(list);

  // 함수형 프로그래밍 - 선언형 프로그래밍
  // print('start');
  // final nameList = await (await getAccounts())
  //     .toStream()
  //     .map(accountToUserId)
  //     .asyncMap(userIdToFutureUser)
  //     .map(userToName)  // extract method 단축키 : ctrl + alt + m
  //     .toList();
  // print(nameList);
  // print('end');

  /// Marple CTO 유인동 FxJs

  // print('start');
  // await fxDart([
  //   await getAccounts(),
  //   mapAccountToUserId,
  //   asyncMapIdToUser,
  //   mapUserToName,
  //   printNames
  // ]);
  // print('end');
}

// printNames(names) => runAll((names) => print(names.toList()), names);
//
// mapUserToName(users) => map((User user) => user.name, users);
//
// asyncMapIdToUser(List<int> userIds) => asyncMap(getUser, userIds);
//
// mapAccountToUserId(accounts) => map((BankAccount account) => account.userId, accounts);

// String userToName(user) => user.name;
//
// FutureOr<User> userIdToFutureUser(userId) => getUser(userId);
//
// int accountToUserId(account) => account.userId;

Future<List<BankAccount>> getAccounts() async {
  await sleepAsync(300.ms);
  return bankAccounts;
}

Future<User> getUser(int id) async {
  return switch (id) {
    1 => User(id, 'Jason'),
    2 => User(id, 'Dart'),
    3 => User(id, 'Baby'),
    4 => User(id, 'Love'),
    5 => User(id, 'Popcorn'),
    _ => throw Exception('404 not found'),
  };
}
