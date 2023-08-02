void main() {
  String studentName = 'Jakir';

  /// list of students
  /// List of String
  List<String> studentList = ['Hasan', 'tanmoy', 'Shafi', 'Rafi', 'yUM'];
  studentList.add('Kabir');
  studentList.add('Joy');
  studentList.addAll(['Sadh', 'Lamia']);
  print(studentList);
  studentList.remove('yUM');
  print(studentList);

  List<double> resultList = [];
  resultList.add(3.40);
  resultList.add(5.00);
  resultList.addAll([2.5, 5.0, 3.56]);
  print(resultList);
  print(resultList[0]);
  print(resultList[4]);
  print(resultList.first);
  print(resultList.last);
  print(resultList.length);
  resultList.removeAt(2);
  print(resultList);
  print(resultList.isEmpty);
  print(resultList.isNotEmpty);
  resultList.clear();

  // contains collection of unique values
  // TODO - explore list func
  Set<int> numbers = {1, 2, 3, 4, 5, 6, 8, 9, 10, 2, 2, 2, 1, 5, 8, 3};
  print(numbers);
  print(numbers.last);

  List<List<int>> doublelist = [
    [1, 2, 4],
    [1, 24, 6, 8]
  ];
  print(doublelist);
}
