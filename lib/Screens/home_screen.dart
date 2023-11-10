import 'package:flutter/material.dart';
import 'package:soil_sage/Screens/community_screen.dart';
import 'package:soil_sage/Screens/profile_screen.dart';
import 'package:soil_sage/Screens/shop_screen.dart';
import 'package:soil_sage/utils/app_layout.dart';
import 'package:soil_sage/utils/app_styles.dart';
import 'package:soil_sage/widgets/tickets_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            const SizedBox(
              height: 20,
            ),
            Text(
              "Let's Find  Your",
              style: Styles.headLineStyle1.copyWith(
                fontSize: 40,
              ),
            ),
            Text(
              "Plants !",
              style: Styles.headLineStyle1.copyWith(
                fontSize: 40,
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.teal.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const AppTicketTabs(firstTab: "Recommend", secondTab: "Fruits"),
            SizedBox(
              height: 55,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Column(children: [
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 17),
                          margin: const EdgeInsets.only(right: 17, top: 5),
                          width: size.width * 0.405,
                          height: 200,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 180, 220, 198),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 120,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Tomatoes",
                                    style: Styles.headLineStyle2.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.teal.shade900,
                                        fontSize: 24),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            left: -40,
                            top: -50,
                            child: Container(
                              padding: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 58,
                                      color:
                                          Color.fromARGB(250, 228, 240, 234)),
                                  color: Color.fromARGB(250, 228, 240, 234)),
                            )),
                        Positioned(
                            top: -20,
                            left: 10,
                            child: Image.asset(
                              "assets/images/img1.png",
                              height: 150,
                            ))
                      ],
                    ),
                  ]),
                  Column(children: [
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 17),
                          margin: const EdgeInsets.only(right: 17, top: 5),
                          width: size.width * 0.405,
                          height: 200,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 180, 220, 198),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 120,
                              ),
                              Text(
                                "Spinach",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal.shade900,
                                    fontSize: 24),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            left: -40,
                            top: -50,
                            child: Container(
                              padding: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 58,
                                      color:
                                          Color.fromARGB(250, 228, 240, 234)),
                                  color: Color.fromARGB(250, 228, 240, 234)),
                            )),
                        Positioned(
                            top: -20,
                            left: -10,
                            child: Image.asset(
                              "assets/images/img2.png",
                              height: 150,
                            ))
                      ],
                    ),
                  ]),
                  Column(children: [
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 17),
                          margin: const EdgeInsets.only(right: 17, top: 5),
                          width: size.width * 0.405,
                          height: 200,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 180, 220, 198),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 120,
                              ),
                              Text(
                                "Tomatoes",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal.shade900,
                                    fontSize: 24),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            left: -40,
                            top: -50,
                            child: Container(
                              padding: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 58,
                                      color:
                                          Color.fromARGB(250, 228, 240, 234)),
                                  color: Color.fromARGB(250, 228, 240, 234)),
                            )),
                        Positioned(
                            top: -20,
                            left: 10,
                            child: Image.asset(
                              "assets/images/img1.png",
                              height: 150,
                            ))
                      ],
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Most Viewed",
              style: Styles.headLineStyle2.copyWith(color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.64,
                    height: 350,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 17),
                    margin: const EdgeInsets.only(right: 17, top: 5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 180, 220, 198),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [BoxShadow(color: Colors.grey.shade200)]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Styles.primaryColor,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/tomatoes.jpg"))),
                        ),
                        SizedBox(height: 10),
                        Text("Tomatoes",
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.teal.shade900, fontSize: 29,fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Despite being a fruit it is prepared like a vegetable.They are a great source of vitamin C ,potassium and folate.",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.teal.shade900, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 0.64,
                    height: 350,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 17),
                    margin: const EdgeInsets.only(right: 17, top: 5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 180, 220, 198),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [BoxShadow(color: Colors.grey.shade200)]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Styles.primaryColor,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/chilli.jpg"))),
                        ),
                        SizedBox(height: 10),
                        Text("Chillies",
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.teal.shade900, fontSize: 29,fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Despite being a fruit it is prepared like a vegetable.They are a great source of vitamin C ,potassium and folate.",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.teal.shade900, fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
