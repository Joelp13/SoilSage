import 'package:flutter/material.dart';
import 'package:soil_sage/Screens/community_screen.dart';
import 'package:soil_sage/Screens/home_screen.dart';
import 'package:soil_sage/Screens/profile_screen.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
