// no-one can create an object
// function er body nai

abstract class Sleepable {
  void sleeping();

  void running() {
    print('running');
  }
}

abstract class Edible {
  void eating();
}

abstract class Person {
  void moving();

  static void eating() {
    print('sfsd');
  }
}

class Employee extends Person implements Sleepable, Edible {
  @override
  void moving() {
    print('Running and moving');
  }

  @override
  void sleeping() {

  }

  @override
  void running() {
    print('me running');
  }

  @override
  void eating() {
    // TODO: implement eating
  }
}

class Manager extends Person {
  @override
  void moving() {
    print('Moving by mercedes');
  }
}

abstract class CEO extends Person {
  double showSalary();
}

class R extends CEO {
  @override
  void moving() {
    print('Jet plane');
  }

  @override
  double showSalary() {
    return 3434930493.0;
  }

}

void main() {
  Employee talha = Employee();
  talha.moving();
  Manager manager = Manager();
  manager.moving();

  /// polymorphism - Aki jinish er binno binno rup
  /// same thing, but different face
  Person fardin = Manager();
  fardin.moving();

  Person rafat = Employee();
  rafat.moving();
}
