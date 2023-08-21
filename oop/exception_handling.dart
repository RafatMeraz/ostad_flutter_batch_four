import 'dart:async';

/// Exception / fault
/// Handle
/// Exception handling
/// Runtime error
/// compile time error

void main() {
  // try-catch
  // try {} catch (e) {}
  try {
    // throw YooException();
    dynamic a = 12 / 0;
    double b = a + 23;
    print(a);
    print(b);
  } on YooException {
    print('this is my yo exception');
  } on FormatException {
    print('Format exception');
  } on TimeoutException {
    print('Print time out exception');
  } catch (error) {
    print(error);
  } finally {
    print('print it');
  }
  print('Hello world');
}

class YooException implements Exception {

  String toString() {
    return 'This is my exception';
  }
}