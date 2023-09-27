import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

/// Stack, Positioned, Align
/// responsive Layout builder: responsive_builder
/// Device preview : device_preview
/// Size (height, width) : Sizer

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ResponsiveBuilder(
        builder: (context, sizeInformation) {
          return Center(
            child: Text(
              sizeInformation.deviceScreenType.toString(),
              style: TextStyle(
                fontSize: 15.sp
              ),
            ),
          );
        },
      ),
    );
  }
}
