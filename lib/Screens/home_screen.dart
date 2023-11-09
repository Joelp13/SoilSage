import 'package:flutter/material.dart';
import 'package:soil_sage/utils/app_layout.dart';
import 'package:soil_sage/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: const Color(0xFFeeedf2),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
            height: 10,
          ),
          Text(
            "Let's Find  Your",
            style: Styles.headLineStyle1,
          ),
          Text(
            "Plants !",
            style: Styles.headLineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            width: size.width * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.green),
          )
        ],
      ),
    );
  }
}
