import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 35.0, right: 300, bottom: 4),
            child: Text(
              "Favorite:",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  fontFamily: " Exo 2"),
            ),
          ),
          Expanded(
              child: Container(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 15.0, left: 4, bottom: 20),
                      child: Container(
                        width: 180,
                        height: 130,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.deepPurple[50]),
                        //  fromARGB(255, 229, 222, 240)
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/image/logo.png",
                              height: 120,
                              //  width: 190,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 30.0, left: 5),
                              child: Text("flutter",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: "Exo 2",
                                      fontWeight: FontWeight.w500)),
                            ),
                            IconButton(
                              padding: EdgeInsets.only(left: 150),
                              onPressed: () {},
                              iconSize: 35,
                              icon: Icon(Icons.favorite),
                              color: Colors.red[700],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
