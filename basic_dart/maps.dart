void main() {
  /// map := key value pair
  /// key : value
  Map<int, String> studentList = {
    5 : 'Kamal',
    1 : 'rafat',
    2 : 'Rafi',
    4 : 'Joy',
    3 : 'Tanmoy',
    1 : 'Hasan'
  };
  print(studentList);
  print(studentList[2]);
  print(studentList[1]);
  print(studentList[3]);
  studentList[9] = 'Jobaraz';
  print(studentList);
  print(studentList[9]);
  print(studentList.length);
  print(studentList.keys);
  print(studentList.values);
  studentList.clear();
  print(studentList);
}