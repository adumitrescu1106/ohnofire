import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as prefix0;
import 'Fire.dart';
// import 'package:location/location.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
GoogleMapController mapController;

List<Marker> allMarkers = [];

PageController _pageController;

int prevPage;

class _MyAppState extends State<MyApp> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(44.441563, 26);
  Set<Marker> markers = Set();
  MapType _currentMapType = MapType.normal;


  LatLng centerPosition;

  void fillmap(){

    const double longitude = 44.4293;
    const double latitude = 26.101;
    const LatLng location = const LatLng(longitude, latitude);


    Marker marker = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: InfoWindow(title : "Me"),

      position: location,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    );

    allMarkers.add(marker);
    setState(() {
      markers.add(marker);
    });






  LatLng loc_1 = LatLng(43.20215, 24.4093);
  String d_l = 'Dangerous';
  Fire fire_1 = new Fire(d_l, loc_1);


  InfoWindow informatii =
  InfoWindow(title: "Fire", snippet: d_l);



  Marker marker_1 = Marker(
    markerId: MarkerId(markers.length.toString()),
    infoWindow: informatii,

    position: loc_1,
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
  );
    setState(() {
      markers.add(marker_1);
    });

    LatLng loc_2 = LatLng(43.22775, 22.34705);
    Fire fire_2 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_2 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_2,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_2);
    });

    LatLng loc_3 = LatLng(41.26844,	31.43132);
    Fire fire_3 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_3 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_3,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_3);
    });

    LatLng loc_4 = LatLng(41.26548	,31.42292);
    Fire fire_4 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_4 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_4,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_4);
    });

    LatLng loc_5 = LatLng(42.71326, 24.17348);
    Fire fire_5 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_5 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_5,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_5);
    });

    LatLng loc_6= LatLng(41.63053,27.68474);
    Fire fire_6 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_6 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_6,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_6);
    });

    LatLng loc_7= LatLng(42.64268	,20.89769);
    Fire fire_7 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_7 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_7,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_7);
    });

    LatLng loc_8= LatLng(39.9424	,33.19272
    );
    Fire fire_8 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_8 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_8,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_8);
    });

    LatLng loc_9= LatLng(41.02128	,28.55629);
    Fire fire_9 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_9 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_9,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_9);
    });

    LatLng loc_10= LatLng(39.9424	,33.19272);
    Fire fire_10 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_10 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_10,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_10);
    });

    LatLng loc_11= LatLng(41.01622	,27.9653);
    Fire fire_11 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_11 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_11,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_11);
    });

    LatLng loc_12= LatLng(42.01572	,21.46728
    );
    Fire fire_12 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_12 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_12,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_12);
    });

    LatLng loc_13= LatLng(42.56977	,12.67589);
    Fire fire_13 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_13 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_13,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_13);
    });

    LatLng loc_14= LatLng(41.44357	,21.9372);
    Fire fire_14 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_14 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_14,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_14);
    });


    LatLng loc_15= LatLng(40.44577	,27.13924);
    Fire fire_15 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_15 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_15,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_15);
    });

    LatLng loc_16= LatLng(40.44225	,27.13782);
    Fire fire_16 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_16 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_16,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_16);
    });

    LatLng loc_17= LatLng(41.50269	,19.74252);
    Fire fire_17 = new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_17 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_17,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_17);
    });

    LatLng loc_18= LatLng(42.01031,	12.71746);
    Fire fire_18= new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_18 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_18,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_18);
    });

    LatLng loc_19= LatLng(40.62736	,17.9993);
    Fire fire_19= new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_19 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_19,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_19);
    });

    LatLng loc_20= LatLng(38.65985	,30.61892
    );
    Fire fire_20= new Fire(d_l, loc_2);


    informatii =
        InfoWindow(title: "Fire", snippet: d_l);



    Marker marker_20 = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: informatii,

      position: loc_20,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
    setState(() {
      markers.add(marker_20);
    });

//    Marker marker_2 = Marker(
//      markerId: MarkerId(markers.length.toString()),
//      infoWindow: informatii,
//
//      position: new_fire_2,
//      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
//    );
//
//    setState(() {
//      markers.add(marker_2);
//    });
  }



  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    mapController = controller;
    fillmap();


  }

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
      print("dddd" + _currentMapType.toString());
    });
  }

  void _onAddMarkerButtonPressed() {
    InfoWindow infoWindow =
    InfoWindow(title: "Fire");
    Marker marker = Marker(
      markerId: MarkerId(markers.length.toString()),
      infoWindow: infoWindow,
      position: centerPosition,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      draggable: true,
    );
    setState(() {
      markers.add(marker);
    });
  }

  void _onAddGPSButtonPressed() {
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(44.4293, 26.101), zoom: 20.0),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: const Color(0xFF991900),
        primaryColorDark: const Color(0xFF890000),
        accentColor: const Color(0xFF890000),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fire Map',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              mapType: _currentMapType,
              myLocationEnabled: true,
              markers: markers,
              onCameraMove: _onCameraMove,
              initialCameraPosition: CameraPosition(
                target: LatLng(44.4293, 26.101),
                zoom: 20,
                tilt: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: new FloatingActionButton(
                  onPressed: _onMapTypeButtonPressed,
                  child: new Icon(
                    Icons.map,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: new FloatingActionButton(
                  onPressed: _onAddMarkerButtonPressed,
                  child: new Icon(
                    Icons.edit_location,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: new FloatingActionButton(
                  onPressed: _onAddGPSButtonPressed,
                  child: new Icon(
                    Icons.gps_fixed,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onCameraMove(CameraPosition position) {
    centerPosition = position.target;
  }
}