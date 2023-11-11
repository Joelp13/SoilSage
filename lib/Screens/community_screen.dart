import 'package:flutter/material.dart';
import 'package:soil_sage/Screens/home_screen.dart';
import 'package:soil_sage/Screens/profile_screen.dart';
import 'package:soil_sage/Screens/shop_screen.dart';
import 'package:soil_sage/utils/app_styles.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          onTap: (index) {
            if (index == 1) {
              Navigator.pushReplacement(
                  context as BuildContext,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const ShopScreen()));
            } else if (index == 2) {
              Navigator.pushReplacement(
                  context as BuildContext,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const CommunityScreen()));
            } else if (index == 3) {
              Navigator.pushReplacement(
                  context as BuildContext,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const ProfileScreen()));
            } else if (index == 0) {
              Navigator.pushReplacement(
                  context as BuildContext,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const HomeScreen()));
            }
          },
          elevation: 10,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: Color.fromARGB(255, 25, 80, 37),
          unselectedItemColor: Color.fromARGB(255, 174, 238, 204),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.messenger_rounded), label: "Commmunity"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
      backgroundColor: const Color(0xFFeeedf2),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 180, 220, 198)),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Color(0xFFBFC205),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "What do you want to ask or share?",
                  style: Styles.headLineStyle4.copyWith(
                    color: Colors.teal.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/iconperson.png")),
                  )),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "Linda Tony",
                    style: Styles.headLineStyle2,
                  ),
                  Text("Lives in Kerala")
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Follow",
                style: Styles.headLineStyle3
                    .copyWith(color: Colors.green, fontSize: 15),
              ),
              SizedBox(
                width: 125,
              ),
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/iconmenu.png")),
                  ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  width: 350,
                  height: 300,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                        color: Colors.white,
                      ),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 4,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1))
                      ],
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/C1.png"))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(Icons.message_outlined),
                SizedBox(
                  width: 10,
                ),
                Text("45"),
                SizedBox(
                  width: 270,
                ),
                Icon(Icons.heart_broken_rounded)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 10,
            width: 200,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/iconperson.png")),
                  )),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "Hassan Dhafer",
                    style: Styles.headLineStyle2,
                  ),
                  Text("Lives in Karnatka")
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Follow",
                style: Styles.headLineStyle3
                    .copyWith(color: Colors.green, fontSize: 15),
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/iconmenu.png")),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
