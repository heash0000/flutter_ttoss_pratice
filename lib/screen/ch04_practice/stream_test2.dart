import 'dart:io';

import 'package:fast_app_base/common/common.dart';

void main() async {
  /// List와 Iterable
  // final List list = ['blue', 'yellow', 'red'];
  // // final iterator = list.iterator;
  // // print(iterator.current);
  // // while(iterator.moveNext()){
  // //   print(iterator.current);
  // // }
  // list.forEach((element) {
  //   print(element);
  // });
  // for(final color in [1, 2,3,4,5]){
  //   print(color);
  // }

  /// sync*로 Iterable 만들기

  // for(final message in countIterable(5)){
  //   print(message);
  // }
  await for(final message in countStream(3 )){
    print(message);
  }

  /// async*로 Stream 만들기

  /// yield*를 통해서 Iterable & Stream 연장시키기
}

Iterable<String> countIterable(int max) sync* {
  for (int i = 1; i <= max; i++) {
    sleep(1.seconds);
    yield i.toString();
  }
  yield '새해복 많이 받으세요';

  yield* ['a', 'b', 'c'];
  // yield* countIterable(max);
}

/// Generator

Stream<String> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    await sleepAsync(1.seconds);
    yield i.toString();
  }
  yield '새해복 많이 받으세요';
  yield* countStream(to);
}

Future sleepAsync(Duration duration) {
  return Future.delayed(duration, () => {});
}