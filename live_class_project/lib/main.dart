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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Home'),
        leading: Icon(
          Icons.adb_rounded,
          color: Colors.amber,
          size: 32,
        ),
      ),
      // body: Column(
      //   children: [
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.end,
      //       children: [
      //         Text('Hello world'),
      //         Text('Hello world'),
      //         Text('Hello world'),
      //         Text('Hello world'),
      //         Text('Hello world'),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Text('hello '),
      //             Text('world '),
      //             Text('are '),
      //             Text('you '),
      //             Text('listening'),
      //           ],
      //         )
      //       ],
      //     ),
      //     Row(
      //       children: [
      //         Text('sdfdsf'),
      //         Text('sdfdsf'),
      //         Text('sdfdsf'),
      //         Text('sdfdsf'),
      //       ],
      //     )
      //   ],
      // ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hello '),
              Text('Class '),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('dsfds')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hello '),
              Text('Class '),
            ],
          ),
          Image.asset('images/dalli.jpg', width: 120, height: 90, fit: BoxFit.cover,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.network('https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
                width: 200,
                height: 200,
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('To register, tap on '),
              Text('Sign up'),
            ],
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20, color: Colors.purple),
              children: [
                TextSpan(
                    text: 'Hello ', style: TextStyle(color: Colors.purple)),
                TextSpan(text: 'Name ', style: TextStyle(color: Colors.amber)),
                TextSpan(
                    text: 'Is skflds ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          RichText(text: TextSpan(
            text: 'To register, tap on ',
            children: [
              TextSpan(
                text: 'Sign up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                )
              )
            ]
          ))
        ],
      ),
    );
  }
}
