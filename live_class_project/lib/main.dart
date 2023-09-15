import 'package:flutter/material.dart';

/// Navigation - one page -> another page
/// Navigator 1(Simple and Lengthy), 2 (complex)
/// Routers Package -> Getx, GoRouter, Auto Route

/// TODO : Stack, Queue, Navigator, Navigation

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

/// Route
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            Text(
              'Home',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                /// Navigation - Route home -> Route settings
                /// Navigator
                /// Navigator.typeOfNavigation(currentLocation, Destination);
                /// Navigation - Push, Pop(Back), replace, replaceAll, removeUntil
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
              child: Text('Go to settings'),
            ),
            ElevatedButton(
              onPressed: () {
                /// Navigation - Route home -> Route settings
                /// Navigator
                /// Navigator.typeOfNavigation(currentLocation, Destination);
                /// Navigation - Push, Pop(Back), replace, replaceAll, removeUntil
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrdersScreen(),
                  ),
                );
              },
              child: Text('Go to Orders'),
            ),
          ],
        ),
      ),
    );
  }
}

/// Route
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Settings',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                      (route) => false,
                );
              },
              child: Text('Home'),
            )
          ],
        ),
      ),
    );
  }
}

/// Route
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Orders',
              style: TextStyle(fontSize: 24),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
              child: Text('Go to settings'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to home'),
            )
          ],
        ),
      ),
    );
  }
}
