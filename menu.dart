import 'package:flutter/material.dart';
// import 'package:flutter_app/my_flutter_app_icons.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/widgets.dart';
// import 'package:permission/permission.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
  AtreiaPagina createState() => AtreiaPagina();
}

class AdouaPagina extends  StatelessWidget{
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile "),
      ),
      body: Container(
          decoration: BoxDecoration (
              gradient: LinearGradient (
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Color(0xFF990000),
                  Color(0xFF660000),
                  Color(0xFF360000),
                  Color(0xFF000000),
                ],
              )
          ),
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                style: new TextStyle(color: Colors.white),
                autovalidate: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.account_circle, color: Colors.white,),
                  hintText: 'Type your name here',
                  labelText: 'Name',
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String value) {
                  return value.contains('@') ? 'Do not use the @ char.' : null;
                },
              ),
              new TextFormField(
                style: new TextStyle(color: Colors.white),
                autovalidate: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail, color: Colors.white,),
                  hintText: 'Type your email address here',
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Email Address',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String value) {
                  return value.contains('@') ? 'Do not use the @ char.' : null;
                },
              ),
              new TextFormField(
                style: new TextStyle(color: Colors.white),
                autovalidate: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today, color: Colors.white,),
                  hintText: 'Type your age here',
                  labelText: 'Age',
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String value) {
                  return value.contains('@') ? 'Do not use the @ char.' : null;
                },
              ),
              new TextFormField(
                style: new TextStyle(color: Colors.white),
                autovalidate: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.straighten, color: Colors.white,),
                  hintText: 'Type your height here',
                  labelText: 'Height (cm)',
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onSaved: (value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  return value.contains('@') ? 'Do not use the @ char.' : null;
                },
              ),

              new TextFormField(
                style: new TextStyle(color: Colors.white),
                autovalidate: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.fitness_center, color: Colors.white,),
                  hintText: 'Type ypur weight here',
                  labelText: 'Weight',
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String value) {
                  return value.contains('@') ? 'Do not use the @ char.' : null;
                },
              ),
            ],
          )
      ),
    );
  }
}

class AtreiaPagina extends State<MyApp> {
  Widget build(BuildContext context) {
    Completer<GoogleMapController> _controller = Completer();

    const LatLng _center = const LatLng(44.441563, 26);
    Set<Marker> markers = Set();
    MapType _currentMapType = MapType.normal;


    LatLng centerPosition;

    void fillmap(){
      const double longitude_1 = 44.4403;
      const double latitude_1 = 26.027;
      const LatLng new_fire_1 = const LatLng(longitude_1, latitude_1);


      const double longitude_2 = 44.3838;
      const double latitude_2 = 26.133;
      const LatLng new_fire_2 = const LatLng(longitude_2, latitude_2);

      InfoWindow infoWindow =
      InfoWindow(title: "Fire" + markers.length.toString());



      Marker marker_1 = Marker(
        markerId: MarkerId(markers.length.toString()),
        infoWindow: infoWindow,

        position: new_fire_1,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      );
      setState(() {
        markers.add(marker_1);
      });

      Marker marker_2 = Marker(
        markerId: MarkerId(markers.length.toString()),
        infoWindow: infoWindow,

        position: new_fire_2,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      );

      setState(() {
        markers.add(marker_2);
      });
    }



    void _onMapCreated(GoogleMapController controller) {
      _controller.complete(controller);
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
      InfoWindow(title: "Fire" + markers.length.toString());
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
      //var location = new Location();
//
//    location.onLocationChanged().listen((LocationData currentLocation) {
//      print(currentLocation.latitude);
//      print(currentLocation.longitude);
    }
    void _onCameraMove(CameraPosition position) {
      centerPosition = position.target;
    }


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
            'Google map widget',
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
                target: _center,
                zoom: 11.0,
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
}

class HomeScreen extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container (
        decoration: BoxDecoration (
            gradient: LinearGradient (
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                Color(0xFF990000),
                Color(0xFF660000),
                Color(0xFF360000),
                Color(0xFF000000),
              ],
            )
        ),
        child: Center (
          child: new Container (
            // alignment: Alignment.center,
            child: new Column (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Container (
                    decoration: BoxDecoration (
                      color: Colors.black.withOpacity(0.4),
                    ),
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan (
                              text: "WorldAlert",
                              style: TextStyle(fontSize: 40)
                          ),
                          TextSpan(
                            text: "\n      Hello there, User! We hope you are happy & healthy today!\n",
                          ),
                          WidgetSpan(
                            child: Icon(Icons.add, size: 14),
                          ),
                          TextSpan(
                            text: "to add",
                          ),
                        ],
                      ),
                    ),
                  ),
                  new ButtonTheme(
                    minWidth: 170.0,
                    height: 100.0,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    child: OutlineButton(
                      child: new Text("Alerts"),
                      color: Colors.black.withOpacity(0.1),
                      textColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      splashColor: Colors.black54,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AdouaPagina()),
                        );
                      },
                      borderSide: BorderSide(width: 1.0, color: Colors.grey),
                      highlightedBorderColor: Colors.black,
                    ),
                  ),

                  new ButtonTheme(
                    minWidth: 170.0,
                    height: 100.0,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    child: OutlineButton(
                      child: new Text("Report a Fire"),
                      color: Colors.black.withOpacity(0.1),
                      textColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      splashColor: Colors.black54,
                      onPressed: () {
                        AtreiaPagina createState() => AtreiaPagina();
                      },
                      borderSide: BorderSide(width: 1.0, color: Colors.grey),
                      highlightedBorderColor: Colors.black,
                    ),
                  ),
                  new ButtonTheme(
                    minWidth: 170.0,
                    height: 100.0,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    child: OutlineButton(
                      child: new Text("Maps"),
                      color: Colors.black.withOpacity(0.1),
                      textColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      splashColor: Colors.black54,
                      onPressed: () {},
                      borderSide: BorderSide(width: 1.0, color: Colors.grey),
                      highlightedBorderColor: Colors.black,
                    ),
                  ),
                  new ButtonTheme(
                    minWidth: 170.0,
                    height: 100.0,
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    child: OutlineButton(
                      child: new Text("Profile"),
                      color: Colors.black.withOpacity(0.1),
                      textColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      splashColor: Colors.black54,
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => AdouaPagina()),
                        );
                      },
                      borderSide: BorderSide(width: 1.0, color: Colors.grey),
                      highlightedBorderColor: Colors.black,
                    ),
                  ),
                ]
            ),

          ),
        ),
      ),
    );
  }
}

