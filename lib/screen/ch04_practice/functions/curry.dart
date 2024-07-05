curry(Function f) => (a, {Iterable? args}) => (args?.length ?? 0) > 1 ? f(a, args) : (b) => f(a, b);

// main() {
//   /// 커리 F => 함수 자체를 쪼개주는 역할
//   /// final curryFunction = curry(F(a,b))
//   /// curryFunction(a)(b)
//
//   // final result = multiply(2, 3);
//   // print(curryMultiply(2)(3));
//
//   final multplay2 = curryMultiply(2);
//
//   for(int i=1;i<=10;i++){
//     print(multplay2(i));
//   }
//
//   // print(curryMultiply(2)(3));
//   // print(curryMultiply(3)(6));
// }
//
// final multiply = (int a, int b) => a * b;
//
// final curryMultiply = curry(multiply);
