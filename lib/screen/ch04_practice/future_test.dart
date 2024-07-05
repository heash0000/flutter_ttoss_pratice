import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/bank_accounts_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

void main() async {
  //  Future의 기본 개념
  /// Future == 미래
  /// 시간이 걸리는 Computation 작업 또는 유저의 응답을 기다려야 하는 상태

  // Future의 생성과 수행
  print('Start');
  final account = await getBankAccounts();
  // print(account.toString());
  print('End');

  // Future timeout
  print('Start');
  final result = await getBankAccounts()
      .timeout(1.seconds)
      .onError((error, stackTrace) => []);
  print(result);
  print('End');

  // Future Error handling
  print('Start');
  getBankAccounts().timeout(1.seconds).then((value){
    print(value);
  }).catchError((error, stackTrace){
    print(error);
    print(stackTrace);
  });
  print('End');

  //FutureOr
}

abstract class DoWorkInterface {
  FutureOr<String> doWork();
}

class SyncWork extends DoWorkInterface{
  @override
  String doWork() {
    return "wow";
  }
}

class AsyncWork extends DoWorkInterface{
  @override
  Future<String> doWork() async{
    return "";
  }
}

Future<List<BankAccount>?> getBankAccounts() async {
  await sleepAsync(2.seconds);
  return bankAccounts;
}

Future sleepAsync(Duration duration) {
  return Future.delayed(duration, () => {});
}
