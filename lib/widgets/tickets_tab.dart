import 'package:soil_sage/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
      child: Container(
          padding: const EdgeInsets.all(3.5),
          child: Row(
            children: [
              Container(
                width: size.width * .24,
                padding: EdgeInsets.symmetric(
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(50), right: Radius.circular(50)),
                  color: Color.fromARGB(250, 228, 240, 234),
                ),
                child: Center(
                  child: Text(firstTab,style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
              Container(
                width: size.width * .24,
                padding: EdgeInsets.symmetric(
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(50)),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Text(secondTab),
                ),
              ),
              Container(
                width: size.width * .24,
                padding: EdgeInsets.symmetric(
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(50)),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Text("Vegetables"),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromARGB(255, 180, 220, 198),
          )),
    );
  }
}
