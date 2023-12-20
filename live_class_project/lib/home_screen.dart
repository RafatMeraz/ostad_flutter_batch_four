import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GoogleMapController googleMapController;
  Location location = Location();

  Future<void> getCurrentLocation() async {
    final LocationData locationData = await location.getLocation();
    // googleMapController.moveCamera(
    //   CameraUpdate.newCameraPosition(
    //     CameraPosition(
    //       target: LatLng(locationData.longitude!, locationData.longitude!),
    //     ),
    //   ),
    // );

    googleMapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(locationData.longitude!, locationData.longitude!),
      zoom: 17
    ),));
    if (mounted) {
      setState(() {

      });
    }
  }

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
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
          getCurrentLocation();
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        compassEnabled: false,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        markers: {
          Marker(
            markerId: MarkerId('initialPosition'),
            position: LatLng(23.792265005916146, 90.40561775869223),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
            infoWindow: InfoWindow(
              title: 'This is title',
              snippet: 'Thi si snippet'
            ),
            draggable: true,
            onDragEnd: (LatLng position) {
              print(position);
            },
            onDragStart: (LatLng position) {
              print(position);
            },
            onDrag: (LatLng position) {
              print(position);
            },
            onTap: () {
              print("on tapped in map");
            }
          ),
          Marker(
            markerId: MarkerId('initialPosition'),
            position: LatLng(23.792265005916146, 90.40561775869223),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
            infoWindow: InfoWindow(
              title: 'This is title',
              snippet: 'Thi si snippet'
            ),
            draggable: true,
            onDragEnd: (LatLng position) {
              print(position);
            },
            onDragStart: (LatLng position) {
              print(position);
            },
            onDrag: (LatLng position) {
              print(position);
            },
            onTap: () {
              print("on tapped in map");
            }
          ),
          Marker(
            markerId: MarkerId('initialPosition'),
            position: LatLng(23.791857673026463, 90.40587656199932),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
            infoWindow: InfoWindow(
              title: 'This is title',
              snippet: 'Thi si snippet'
            ),
            draggable: true,
            onDragEnd: (LatLng position) {
              print(position);
            },
            onDragStart: (LatLng position) {
              print(position);
            },
            onDrag: (LatLng position) {
              print(position);
            },
            onTap: () {
              print("on tapped in map");
            }
          ),
        },
        polylines: {
          Polyline(
            polylineId: PolylineId('basic-line'),
            color: Colors.red,
            width: 6,
            visible: true,
            endCap: Cap.buttCap,
            jointType: JointType.mitered,
            patterns: [
              PatternItem.gap(10),
              PatternItem.dash(10),
              PatternItem.dot,
              PatternItem.dash(10),
            ],
            points: [
              LatLng(23.792265005916146, 90.40561775869223),
              LatLng(23.791857673026463, 90.40587656199932),
              LatLng(23.792353127205153, 90.40593657642603),
              LatLng(23.792265005916146, 90.40561775869223),
              LatLng(23.792265005916146, 90.40561775869223),
            ]
          ),
          Polyline(
            polylineId: PolylineId('basic-line'),
            color: Colors.red,
            width: 6,
            visible: true,
            endCap: Cap.buttCap,
            jointType: JointType.mitered,
            patterns: [
              PatternItem.gap(10),
              PatternItem.dash(10),
              PatternItem.dot,
              PatternItem.dash(10),
            ],
            points: [
              LatLng(23.792265005916146, 90.40561775869223),
              LatLng(23.791857673026463, 90.40587656199932),
              LatLng(23.792353127205153, 90.40593657642603),
              LatLng(23.792265005916146, 90.40561775869223),
              LatLng(23.792265005916146, 90.40561775869223),
            ]
          ),
        },
        polygons: {
          Polygon(
            polygonId: PolygonId('basic-polygon'),
            visible: true,
            fillColor: Colors.pink,
            strokeColor: Colors.indigo,
            strokeWidth: 6,
            consumeTapEvents: true,
            onTap: () {
              print('tapped on my area');
            },
            points: [
              LatLng(23.79157359132647, 90.40585845708847),
              LatLng(23.791445969107922, 90.40558386594057),
              LatLng(23.791111573758148, 90.4059499874711),
              LatLng(23.791399031096965, 90.40624402463436),
              LatLng(23.791653661933267, 90.40618401020765)
            ]
          )
        },
        circles: {
          Circle(
            circleId: CircleId('basic-circle'),
            center: LatLng(23.791851230575787, 90.40522679686546),
            radius: 10,
            fillColor: Colors.pink.shade300,
            strokeColor: Colors.indigo,
            strokeWidth: 4,
            consumeTapEvents: true,
            onTap: () {
              print('tap on circle');
            }
          ),
        },
      ),
    );
  }
}
