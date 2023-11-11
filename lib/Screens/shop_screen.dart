import 'package:flutter/material.dart';
import 'package:soil_sage/Screens/community_screen.dart';
import 'package:soil_sage/Screens/home_screen.dart';
import 'package:soil_sage/Screens/profile_screen.dart';
import 'package:soil_sage/utils/app_styles.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
       appBar: AppBar(
        title: Text('Stores',
        style: TextStyle(color: Colors.teal.shade900,fontWeight: FontWeight.bold,fontSize: 25),),
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.teal.shade900
          ),
          onPressed: () {
            Navigator.pushReplacement(
                        context as BuildContext,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomeScreen()));
          },
        ),),
        body: Column(
          children: [
                const SizedBox(
                  height: 100,
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
                        "Search Stores",
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.teal.shade700,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
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
                            image: AssetImage("assets/images/store1.png")
                          )
                        ),
                        
                      )
                    ],
                  ),
                )
                
              ],
        ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          onTap: (index) {
            if (index==1)
            {
              Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (BuildContext context) => const ShopScreen()));
            }
            else if(index==2)
            {
                   Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (BuildContext context) => const CommunityScreen()));
         
            }
            else if(index==3)
            {
                   Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (BuildContext context) => const ProfileScreen()));
         
            }
            else if(index==0)
            {
                   Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (BuildContext context) => const HomeScreen()));
         
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
    );
  }
}
