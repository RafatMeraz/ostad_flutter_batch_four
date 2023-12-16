import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          zoom: 19,
            target: LatLng(23.792265005916146, 90.40561775869223),
          bearing: 0,
          tilt: 5
        ),
        onTap: (LatLng position) {
          print(position);
        },
        onLongPress: (LatLng latLng) {
          print('On long press at $latLng');
        },
        onCameraMove: (cameraPosition) {
          print(cameraPosition);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        compassEnabled: false,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
}
