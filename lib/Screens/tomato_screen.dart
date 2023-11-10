import 'package:flutter/material.dart';
import 'package:soil_sage/Screens/home_screen.dart';
import 'package:soil_sage/Screens/youtube_player.dart';
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
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Tomatoes",style: Styles.headLineStyle1,),
                SizedBox(
                  height: 20,
                ),

                Text(
                  "About",
                  style: Styles.headLineStyle2,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "The tomato is the edible berry of the plant commonly known as the tomato plant. The species originated in western South America,Mexico, and Central America. Its domestication and use as a cultivated food may have originated with the indigenous people of Mexico.",
                  style: Styles.headLineStyle3
                      .copyWith(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Energy",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                    Text(
                      "74 kj(18kcal)",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Carbohydrates",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                    Text(
                      "3.9g",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sugar",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                    Text(
                      "2.6g",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fibre",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                    Text(
                      "1.2g",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fat",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    ),
                    Text(
                      "0.2g",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Steps to cultivate Tomatoes",
                  style: Styles.headLineStyle2,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 250,
                    width: 400,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/bg.png")),
                    )),
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
                                  const YouTube()));
                    },
                    icon: Icon(Icons.play_circle),
                    iconSize: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
