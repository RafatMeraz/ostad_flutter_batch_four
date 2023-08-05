void main() {
  int a = 200;
  int b = 45;

  int add = a + b;
  int sub = a - b;
  int multi = a * b;
  double div = a / b;
  int divInt = a ~/ b;
  print(add);
  print(sub);
  print(multi);
  print(div);
  // print add, then add 1 to `add`
  print(add++);
  print(add);
  print(++add);
  print(add);

  print(a--);
  print(a);
  print(--a);
  print(a);
}