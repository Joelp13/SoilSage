/*import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height / 2,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.1),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      
                      ),
                    ],
                    borderRadius:const  BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/tomato.png'),
                      fit: BoxFit.fill
                    ),

                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}*/