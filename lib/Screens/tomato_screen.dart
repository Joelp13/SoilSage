import 'package:flutter/material.dart';
import 'package:soil_sage/Screens/home_screen.dart';

class TomatoScreen extends StatelessWidget {
  const TomatoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 174, 238, 204),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: IconButton(
                  color: Color(0xff4c505b),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context as BuildContext,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomeScreen()));
                  },
                  icon: Icon(Icons.arrow_back),
                  iconSize: 20,
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: IconButton(
                  color: Color(0xff4c505b),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context as BuildContext,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomeScreen()));
                  },
                  icon: Icon(Icons.heart_broken_rounded),
                  iconSize: 20,
                ),
              )
            ],
          ),
          Center(
              child: Image.asset(
            "assets/images/img1.png",
            height: 250,
          )),
        ],
      ),
    );
  }
}
