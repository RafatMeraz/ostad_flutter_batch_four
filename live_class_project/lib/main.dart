import 'package:flutter/material.dart';

void main() {
  // give me some widget
  runApp(MyApp());
}

// Hot reload => ctl + s
// Hot restart => ctl + shift + \

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Ostad app',
    );
  }
}

class HomeScreen extends StatelessWidget {

  List<String> students = [
    'Rafat',
    'Azim',
    'Hakim',
    'Jawad',
    'Kanij',
    'Riad',
    'Jakir',
    'rohan'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Scrollbar(
        thickness: 20,
        radius: Radius.circular(10),
        /*child: GridView.builder(
          itemCount: 100,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
          itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(index.toString()),
                  Icon(Icons.adb_rounded),
                ],
              );
          },
        )*/
        // child : ListView.builder
        // child: ListView.separated(
        //   itemCount: 100,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       title: Text('Item number $index'),
        //     );
        //   },
        //   separatorBuilder: (context, index) {
        //     return Column(
        //       children: [
        //         Text(index.toString()),
        //         Divider(),
        //       ],
        //     );
        //   },
        // ),
        child: ListView.separated(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                print('go to details screen');
              },
              title: Text(students[index]),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),
    );
  }
}
