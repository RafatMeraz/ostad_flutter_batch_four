// bap / dadar property
// inherit
// doesn't support multiple inheritance

/// SUPER / PARENT
class Human {
  void eating() {
    print('Eating');
  }

  void moving() {
    print('Moving');
  }

  void talking() {
    print('Talking');
  }

  void breathing() {
    print('Breathing');
  }
}

class Teacher extends Human {
  void teaching() {
    print('Teaching');
  }
}

class Student extends Human {
  void studying() {
    print('Studying');
  }
}

class Programmer extends Student {
  void coding() {
    print('Coding');
  }
}

/// BASE CLASS / CHILD CLASS
class SpecialOne extends Human {
  @override
  void talking() {
    print('Not talking');
  }

  @override
  void eating() {
    super.eating();
    print('Eating fast-food');
  }
}

void main() {
  Programmer hasan = Programmer();
  hasan.breathing();
  hasan.talking();
  hasan.coding();
  hasan.studying();

  Student rafi = Student();
  rafi.studying();
  rafi.eating();
  print('');

  SpecialOne one = SpecialOne();
  one.talking();
  one.eating();
}
