import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:soil_sage/login.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('databox');
  runApp(const MyApp());
}

Future<Map<String, double>> getlocation() async {
  await Geolocator.checkPermission();
  await Geolocator.requestPermission();

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best);
  print('ss');
  var locationData = {
    "Latitutde": position.latitude,
    "Longitude": position.longitude
  };
  return locationData;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: const Mylogin());
  }
}
