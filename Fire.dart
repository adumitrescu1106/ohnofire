import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class  Fire{
  String description;
  //String thumbNail;
  LatLng locationCoords;

  Fire (String description, LatLng coords) {
    this.description = description;
    this.locationCoords = coords;
  }
}

//String Description(int Danger_factor) {
//  if (Danger_factor < 3)
//    return "Dangerous";
//  else {
//    if (Danger_factor < 7) {
//      return "Run";
//    }
//  }
//  return "FUUUU";
//}

//final List<Fire> coffeeShops = [
//  Fire(
//      address: '18 W 29th St',
//      Danger_Factor: 4,
//      description: 'Dangerous',
//      locationCoords: LatLng(40.745803, -73.988213),
//      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipNNzoa4RVMeOisc0vQ5m3Z7aKet5353lu0Aah0a=w90-h90-n-k-no'
//  ),
//  Fire(
//      address: '463 7th Ave',
//      description: 'FUUUU',
//      locationCoords: LatLng(40.751908, -73.989804),
//      thumbNail: 'https://lh5.googleusercontent.com/p/AF1QipOfv3DSTkjsgvwCsUe_flDr4DBXneEVR1hWQCvR=w90-h90-n-k-no'
//  ),