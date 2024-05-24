import 'package:flutter/material.dart';

class AuthHome extends StatelessWidget {
  const AuthHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child:
    
       Column(
         children: [
           Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 12.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 107, 75, 223),
                                fontWeight: FontWeight.w500,
                                fontFamily: " Exo 2"),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Login ",
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromARGB(255, 107, 75, 223),
                              fontWeight: FontWeight.w500,
                              fontFamily: " Exo 2"),
                        ),
                      )
                    ],
                  ),
        
               Divider(
                color: Color.fromARGB(255, 229, 222, 240),
                thickness: 3,
                indent: 1,
                endIndent: 300,
                height: 0,
              ),
              const Divider(
                color: Color.fromARGB(255, 229, 222, 240),
                thickness: 3,
                indent: 310,
                endIndent: 1,
                height: 8,
              ),
               ],
       ),
              );
    
  }
}