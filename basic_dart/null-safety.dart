void main() {
  // nullable int
  int? a;
  // a = 0;
  int b = 34;
  // null handle
  int c = (a ?? 0) + b;
  int d = (a ?? 18) + 10;
  // force unwrap
  // a = 4;
  int h = a! * 10;
  print(a);
  print(c);
  print(d);
  String? name;
  print(name);
  name = 'tamim';
  print(name);
}