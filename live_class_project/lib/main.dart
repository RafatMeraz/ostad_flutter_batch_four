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
            Container(
              width: 200,
              height: 100,
              margin: EdgeInsets.all(16),
              // padding: EdgeInsets.only(top: 10, bottom: 10, left: 4),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 2),
                // // borderRadius: BorderRadius.circular(10)
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                // shape: BoxShape.circle
              ),
              child: Text('Hello'),
              alignment: Alignment.center,
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500
                  ),
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
                onLongPress: () {
                  print('Email deleted!');
                },
                onPressed: () {
                  print('Email has been sent');
                },
                child: Text('Send Email'),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple,
                textStyle: TextStyle(
                  fontSize: 24
                )
              ),
              onLongPress: () {
                print('Long press');
              },
              onPressed: () {
                print('Resend email');
              },
              child: Text('Resend'),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            OutlinedButton(
              onLongPress: () {
                print('Long press on outlined button');
              },
              onPressed: () {},
              child: Text('Outlined button'),
            ),
            // input
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                // maxLines: 5,
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  fillColor: Colors.purple,
                  filled: true,
                  hintText: 'Enter your email address',
                  hintStyle: TextStyle(
                    color: Colors.white70
                  ),
                  suffixIcon: Icon(Icons.email_outlined, color: Colors.white70,),
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.white70,),
                  label: Text('Email address'),
                  labelStyle: TextStyle(
                    color: Colors.white
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                controller: TextEditingController(),
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  fillColor: Colors.purple,
                  filled: true,
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    color: Colors.white70
                  ),
                  suffixIcon: Icon(Icons.password, color: Colors.white70,),
                  label: Text('Password'),
                  labelStyle: TextStyle(
                    color: Colors.white
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

