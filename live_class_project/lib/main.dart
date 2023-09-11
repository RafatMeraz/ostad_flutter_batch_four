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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print('tapped on hello world');
              },
              onLongPress: () {},
              onDoubleTap: () {},
              child: Text(
                'Hello world',
                style: TextStyle(fontSize: 32),
              ),
            ),
            InkWell(
              onTap: () {
                print('tapped on hello world');
              },
              borderRadius: BorderRadius.circular(16),
              onLongPress: () {},
              onDoubleTap: () {},
              child: Text(
                'Hello world',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
