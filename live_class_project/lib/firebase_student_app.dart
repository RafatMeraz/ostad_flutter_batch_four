import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirebaseStudentApp extends StatelessWidget {
  const FirebaseStudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StudentList(),
    );
  }
}

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference studentCollectionRef =
      firebaseFirestore.collection('students');
  final TextEditingController nameTEController = TextEditingController();
  final TextEditingController rollTEController = TextEditingController();
  List<Student> studentList = [];

  Future<void> getStudentData() async {
    studentList.clear();
    final QuerySnapshot result = await studentCollectionRef.get();
    for (QueryDocumentSnapshot element in result.docs) {
      Student student = Student(element.get('name'),
          int.tryParse(element.get('roll').toString()) ?? 0, element.id);
      studentList.add(student);
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    // getStudentData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student list '),
      ),
      body: RefreshIndicator(
        onRefresh: getStudentData,
        child: StreamBuilder(
            stream: studentCollectionRef.orderBy('roll', descending: false).snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }
              if (snapshot.hasData) {
                studentList.clear();
                for (QueryDocumentSnapshot element in snapshot.data!.docs) {
                  Student student = Student(element.get('name'),
                      int.tryParse(element.get('roll').toString()) ?? 0, element.id);
                  studentList.add(student);
                }

                return ListView.builder(
                    itemCount: studentList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(studentList[index].roll.toString()),
                        ),
                        title: Text(studentList[index].name),
                        trailing: Wrap(
                          children: [
                            IconButton(
                              onPressed: () {
                                studentCollectionRef
                                    .doc(studentList[index].id)
                                    .update({
                                  'name' : 'Rafat',
                                  'roll' : 1,
                                });
                              },
                              icon: const Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {
                                studentCollectionRef
                                    .doc(studentList[index].id)
                                    .delete();
                              },
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      );
                    });
              }

              return const SizedBox();
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showAddStudentBottomSheet();
        },
      ),
    );
  }

  void showAddStudentBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              TextField(
                controller: nameTEController,
              ),
              TextField(
                controller: rollTEController,
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await studentCollectionRef.add({
                      'name': nameTEController.text.trim(),
                      'roll': int.tryParse(rollTEController.text.trim()) ?? 0,
                      'extra' : {
                        'no' : 12
                      }
                    });
                    // await studentCollectionRef.doc('034-29432-4').set({
                    //   'name': nameTEController.text.trim(),
                    //   'roll': int.tryParse(rollTEController.text.trim()) ?? 0,
                    //   'extra' : {
                    //     'no' : 12
                    //   }
                    // });
                    nameTEController.clear();
                    rollTEController.clear();
                    Navigator.pop(context);
                  },
                  child: const Text('Add')),
            ],
          );
        });
  }
}

class Student {
  final String name;
  final int roll;
  final String id;

  Student(this.name, this.roll, this.id);
}
