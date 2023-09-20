import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text('Home'),
        trailing: CupertinoSwitch(
          onChanged: (bool onChange) {
            
          }, value: true,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            CupertinoButton.filled(child: Text('sfd'), onPressed: () {}),
            CupertinoTextField(),
            CupertinoTabBar(items: [
              BottomNavigationBarItem(label: 'sdfd', icon: Icon(CupertinoIcons.home)),
              BottomNavigationBarItem(label: 'sdfd', icon: Icon(CupertinoIcons.home)),
              BottomNavigationBarItem(label: 'sdfd', icon: Icon(CupertinoIcons.home)),
            ])
          ],
        ),
      ),
    );
  }
}
