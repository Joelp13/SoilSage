import 'package:flutter/material.dart';
import 'package:soil_sage/Screens/home_screen.dart';
import 'package:soil_sage/main.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/screen2.jpg'),fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20,top: 200),
              child: Text('Welcome\nBack!',style: TextStyle(
                color: Colors.white70,
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4,right: 35,left: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon:Icon(Icons.person),
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Email',
                       hintStyle:TextStyle(fontWeight: FontWeight.bold ,color: Colors.teal.shade900),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon:Icon(Icons.lock),
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Password',
                       hintStyle:TextStyle(fontWeight: FontWeight.bold ,color: Colors.teal.shade900),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  /*TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon:Icon(Icons.location_city),
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Panchayat',
                      hintStyle:TextStyle(fontWeight: FontWeight.bold ,color: Colors.teal.shade900),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),*/
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Sign In',style: TextStyle(color: Colors.white,
                        fontSize: 27,fontWeight: FontWeight.w700
                      ),),
                      SizedBox(
                        width: 40 ,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff4c505b),
                        child: IconButton(
                          color: Colors.white,
                          onPressed:() {
                            getlocation();
                            Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (BuildContext context) => const HomeScreen()));
                          },
                          icon: Icon(Icons.arrow_forward),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}

void handleClick(context) {
  getlocation();
  Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (BuildContext context) => const HomeScreen()));
}