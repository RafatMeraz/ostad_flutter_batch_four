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
        child: ListView(
          children: [
            ListTile(
              title: Text('Username'),
              subtitle: Text('user@email.com'),
              leading: Icon(Icons.adb_rounded),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: () {
                print('list tile pressed');
              },
            ),
            Divider(
              height: 24,
              thickness: 1,
              color: Colors.pink,
              endIndent: 16,
              indent: 16,
            ),
            ListTile(
              title: Text('Username'),
              subtitle: Text('user@email.com'),
              leading: Icon(Icons.adb_rounded),
              trailing: Column(
                children: [
                  Icon(Icons.arrow_right_alt),
                  Icon(Icons.arrow_right_alt),
                ],
              ),
              onTap: () {
                print('list tile pressed');
              },
            ),
            ListTile(
              title: Text('Username'),
              subtitle: Text('user@email.com'),
              leading: Icon(Icons.adb_rounded),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: () {
                print('list tile pressed');
              },
            ),
            ListTile(
              title: Text('Username'),
              subtitle: Text('user@email.com'),
              leading: Icon(Icons.adb_rounded),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: () {
                print('list tile pressed');
              },
            ),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
            Text('sjfjdksf'),
          ],
        ),
      ),
    );
  }
}
