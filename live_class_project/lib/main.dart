import 'package:flutter/material.dart';

/// TODO : Add text field theme
/// TODO : Dark mode er jonno theme data add korben

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
            backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            elevation: 5,
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.6,
              wordSpacing: 0.5
            )
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
            foregroundColor: Colors.deepOrange
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          elevation: 5,
          shadowColor: Colors.green
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18
          ),
          bodySmall: TextStyle(
            fontSize: 10
          ),
          bodyLarge: TextStyle(
            fontSize: 22
          ),
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.amberAccent,
            elevation: 5,
            shadowColor: Color(0xFF510622)
        ),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

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
            Text('Hello world',),
            Text('Hello world', style: Theme.of(context).textTheme.bodySmall,),
            Text('Hello world', style: Theme.of(context).textTheme.bodyLarge,),
            Text('Hello world', style: Theme.of(context).textTheme.headlineMedium,),
            TextButton(onPressed: () {}, child: Text('Tap here'),),
            TextButton(onPressed: () {}, child: Text('Tap here'),),
            TextButton(onPressed: () {}, child: Text('Tap here'),),
            ElevatedButton(
              onPressed: () {}, child: Text('Tap here'),),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {},
              child: Text('Tap here'),
            ),
          ],
        ),
      ),
    );
  }
}





