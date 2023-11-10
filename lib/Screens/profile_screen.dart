import 'package:flutter/material.dart';
import 'package:soil_sage/Screens/community_screen.dart';
import 'package:soil_sage/Screens/home_screen.dart';
import 'package:soil_sage/Screens/shop_screen.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Profile',
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
        body: Container(
          decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/profile.jpg'),fit: BoxFit.cover
        )
      ),
      padding: EdgeInsets.only(left: 18,top: 25,right: 15),
      child: GestureDetector(
        onTap: () {
          
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                        color: Colors.white,
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 4,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1)
                        )
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://lh3.googleusercontent.com/a/ACg8ocJpH9RQnMG5Jl3mveHbeslOeAgWN_5GNBlf6r3KMOB4P6s=s360-c-no')
                      )
                      
                    ),
                  ),
                  Positioned(
                    bottom:0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Colors.white
                        ),
                        color: Colors.teal.shade900,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),

                    ),

                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
        ),
        
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
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
  Widget buildtextField(String labelText,String placeholder,bool isPasswordTextField){
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 35)
          
          ),)
        );
  }
}
