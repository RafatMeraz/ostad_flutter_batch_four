void main() {
  // Numeric - integer(1, 4, 33434, -234),
  //         - floating(double)(1.2, 4545.3434)
  // Textual - String('sdfadsf')
  // boolean - true/false

  /// variable - container
  /// variable(container) banaitechai - name Rahim

  /// variable creation syntax
  /// datatype variableName = value;
  /// naming convention - camelCase, snack_case, PascalCase
  String firstName = 'Rahim';
  String lastName = 'Hasan';
  /// String concat
  String fullName = firstName + ' ' + lastName;
  print(fullName);
  int age = 34;
  double cgpa = 3.60;
  bool dinnerDone = true;

  // string interpolation
  String details = 'Full name: $fullName\nAge: $age\nCGPA: $cgpa';
  print(details);

  print(firstName);
  print(lastName);
  print(age);
  print(cgpa);
  print(dinnerDone);

  age = 45;
  print(age);
  cgpa = 3.7000001;
  print(cgpa);

  int a = 65;
  int b = 56;
  int result = a + b;
  print(result);
  double g = 3.1416;
  double t = 3434.5;
  double addResult = g + t;
  print(g+t);
  print(addResult);
}