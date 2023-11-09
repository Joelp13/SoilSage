import 'package:flutter/material.dart';
import 'package:soil_sage/utils/app_layout.dart';
import 'package:soil_sage/utils/app_styles.dart';
import 'package:soil_sage/widgets/tickets_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
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
                          image: AssetImage("assets/images/user.png")),
                    )),
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/down.png")),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Let's Find  Your",
              style: Styles.headLineStyle1,
            ),
            Text(
              "Plants !",
              style: Styles.headLineStyle1,
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
                        style: Styles.headLineStyle4,
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
                              Text(
                                "Tomatoes",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
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
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
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
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
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
            )
          ]),
    );
  }
}
