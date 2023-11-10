import 'package:flutter/material.dart';
import 'package:soil_sage/Screens/home_screen.dart';
import 'package:soil_sage/utils/app_layout.dart';
import 'package:soil_sage/utils/app_styles.dart';

class TomatoScreen extends StatelessWidget {
  const TomatoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final size = AppLayout.getSize(context);
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
          Container(
            width: screenWidth,
            height: MediaQuery.of(context).size.height * 0.60,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tomatoes",
                  style: Styles.headLineStyle1),
                Text(
                  "About",
                  style: Styles.headLineStyle2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
