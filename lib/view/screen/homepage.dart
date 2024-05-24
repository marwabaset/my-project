import 'package:flutter/material.dart';
import 'package:new_project/view/widget/customappbar.dart';
import 'package:new_project/view/widget/customcard.dart';
import 'package:new_project/view/widget/recomende.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
         CustomAppBarHome(),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
         Recomended(),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Courses",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            fontFamily: " Exo 2"),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 229, 222, 240),
                thickness: 3,
                indent: 40,
                endIndent: 40,
                height: 15,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomCardHome()
            ],
          ),
        ),
      ]),
    );
  }
}
