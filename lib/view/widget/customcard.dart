import 'package:flutter/material.dart';

class CustomCardHome extends StatelessWidget {
  const CustomCardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurple[50]),
              child: Column(
                children: [
                  Image.asset(
                    "assets/image/logo.png",
                    alignment: Alignment.topCenter,
                  ),
                  const Text("program",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Exo 2",
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
