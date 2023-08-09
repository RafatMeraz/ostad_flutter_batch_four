void main() {
  // function call
  // argument
  welcome(name: 'Hsaan', time: 'Morning', age: 34);
  welcome(age: 34, time: 'Morning', name: 'Zehad');
  welcome(name: 'Zehad', time: 'Afternoon', age: 34);
  welcome(time: 'Mornign', name: 'tanmoy');
  int result = add(23, 45);
  print(result);
  print(add(24213, 546546));
}

/// function declare/signature
/// parameter
/// variable scope
/// Named parameters
void welcome({required String name, required String time, int age = 0}) {
  print('Hello $name');
  print('Good $time');
  print('Have you any appointment?');
  print('Have a nice day');
  print(add(age, age, 45));
  print('');
}

/// write a program that return result of two values addition
/// return , return-type
/// default return type `dynamic`
/// Optional parameters
int add(int a, int b, [int c = 0, int e = 1, String name = '']) {
  int d = a + b + c;
  return d;
}
