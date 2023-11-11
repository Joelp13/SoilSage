

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:soil_sage/Screens/bottom.dart';
import 'package:soil_sage/Screens/home_screen.dart';
import 'package:soil_sage/login.dart';

void main() {
  runApp(const MyApp());
}
void getlocation() async
{
   await Geolocator.checkPermission();
   await Geolocator.requestPermission();

Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
print('ss');
print(position);

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
      home: const Mylogin()
    );
  }
}
