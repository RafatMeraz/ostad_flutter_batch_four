import 'dart:collection';

void main() {
  // Lift e kore niche
  // purchase korbe
  // Back to flat
  // loop - for, while, do-while

  /// count = 0 - 10
  /// kore felsi => condition
  /// korar korar pore 1 kore increment korba -=> increment

  /// for - start point(initialization) - condition(check) - increment/decrement

  /// (initialization : condition : increment/decrement)
  for (int n = 1; n <= 10; n = n+1) {
    print('Task no $n');
    print('Lift a kore niche namba');
    print('Purchase korba');
    print('Back korba');
  }

  /// while loop
  /// (initialization : condition : increment/decrement)
  int m = 0;
  while (m <= 10) {
    m += 2;
    print('From while loop $m');
  }
  print('loop exited');

  List<String> students = ['Rakib', 'sakib', 'Mehrab'];

  // for (int i = 0; i < students.length; i++) {
  //   print('$i : ${students[i]}');
  // }

  // for..in
  for (String s in students) {
    print(s);
  }

  Map<String, String> universities = {
    'DU' : 'Dhaka University',
    'NSU' : 'N S U',
    'RUET' : "aksjdf d"
  };

  // forEach
  universities.forEach((key, value) {
    print('$key : $value');
  });

}