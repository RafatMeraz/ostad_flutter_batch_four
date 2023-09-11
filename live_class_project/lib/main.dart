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
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Scrollbar(
        thickness: 20,
        radius: Radius.circular(10),
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
            Icon(Icons.adb_rounded),
          ],
        )
      ),
    );
  }
}
