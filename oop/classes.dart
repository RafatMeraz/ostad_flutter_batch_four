void main() {
  /// instance creation rule
  /// ClassName objectName = Constructor()

  /// instance/object
  Person sami =
      Person(name: 'Sami', age: 23, address: 'Mirpur', gender: 'Male');
  sami.name = 'Samiul haque';
  // sami.gender = 'Female';
  sami.address = 'sdfdasfsdf';
  // sami.age = 34;

  Person a = Person(
      name: 'Karim',
      address: 'Banani',
      gender: 'Male',
      age: 12,
      university: 'UAP');
  // a.name = 'ew ewfsdf';

  print(sami.name);
  print(sami.age);
  print(sami.address);
  print(sami.gender);
  sami.eating();
  sami.moving(carName: 'Bus');
  sami.talking();

  print('');

  Person.count = 45;

  print(a.name);
  print(a.age);
  print(a.address);
  print(a.gender);
  a.eating();
  a.moving(carName: 'Train');
  a.talking(toWhom: "Rahim");
  Person.count = 67;
  print(Person.count);

  int result = MathOps.add(12,123);
  int re = MathOps.subs(12,123);
}

/// class
class Person {
  static int count = 0;
  /// attributes
  String name;
  int age;
  String address;
  String gender;
  String? university;

  /// constructor : user late
  // Person(String name, int age, String address, String gender) {
  //   this.name = name;
  //   this.age = age;
  //   this.address = address;
  //   this.gender = gender;
  // }

  // Person(this.name, this.age, this.address, this.gender, [this.university]);
  Person(
      {required this.name,
      required this.age,
      required this.address,
      required this.gender,
      this.university}) {
    count++;
  }

  /// functions/methods
  void eating() {
    print('$name is eating');
  }

  void moving({required String carName}) {
    print('$name is moving in $carName');
  }

  void talking({String? toWhom}) {
    print('$name is talking $toWhom');
  }
}

class MathOps {
  static int add(int a, int b) {
    return a + b;
  }
  static int subs(int a, int b) {
    return a - b;
  }
}

// class - new datatype/custom data
// variable creation - object/instance
// class function - method
// same name to class - constructor
