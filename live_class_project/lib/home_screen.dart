import 'package:flutter/material.dart';

/// MediaQuery

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          /// Ratio := Width : height
          /// Ratio := 16/16
          /// 100 : 100
          // AspectRatio(
          //   aspectRatio: 16/4,
          //   child: Container(
          //     color: Colors.red,
          //     child: Image.network(
          //         'https://images.idgesg.net/images/article/2017/10/wireless_network_internet_of_things_iot_thinkstock_853701554_3x2-100740688-large.jpg?auto=webp&quality=85,70',
          //     fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          // Container(
          //   width: MediaQuery.sizeOf(context).width,
          //   height: MediaQuery.sizeOf(context).width,
          //   color: Colors.amberAccent,
          //   child: FractionallySizedBox(
          //     widthFactor: 0.5, // 0 - 1
          //     heightFactor: 0.5,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          // )
          // Flexible(
          //   fit: FlexFit.tight,
          //   flex: 3,
          //   child: Container(
          //     color: Colors.amber,
          //     width: MediaQuery.sizeOf(context).width,
          //   ),
          // ),
          // Flexible(
          //   flex: 7,
          //   child: Column(
          //     children: [
          //       Flexible(
          //         child: Container(
          //           color: Colors.red,
          //           width: MediaQuery.sizeOf(context).width,
          //         ),
          //       ),
          //       SizedBox(height: 50,),
          //     ],
          //   ),
          // ),
          // Flexible(
          //   flex: 1,
          //   child: Row(
          //     children: [
          //       Flexible(
          //         child: Container(
          //           color: Colors.blue,
          //         ),
          //       ),
          //       Flexible(
          //         flex: 5,
          //         child: Container(
          //           color: Colors.lightGreenAccent,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Flexible(
          //   fit: FlexFit.tight,
          //   flex: 5,
          //   child: Container(
          //     color: Colors.purple,
          //     width: MediaQuery.sizeOf(context).width,
          //   ),
          // ),
          Container(
            color: Colors.black54,
            height: 100,
            width: MediaQuery.sizeOf(context).width,
          ),
          // ** Expanded, Flexible
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.lightGreenAccent,
              width: double.infinity,
              alignment: Alignment.center,
              child: SizedBox(
                width: 100,
                height: 20,
                child: FittedBox(
                  child: Text(
                    ' sa;foksd flsdkf lsdkl;sadsa aksdlfk l;sdkf dlf kl;',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
