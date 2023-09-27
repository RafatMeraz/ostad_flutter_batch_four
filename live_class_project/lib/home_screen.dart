import 'package:flutter/material.dart';

/// Stack, Positioned, Align

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        width: 30,
                        height: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 10,
              child: Container(
                width: 30,
                height: 30,
                color: Colors.black54,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
