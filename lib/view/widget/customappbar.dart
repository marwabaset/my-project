import 'package:flutter/material.dart';

class CustomAppBarHome extends StatelessWidget {
  final void Function()? onPressedSearch;
  const CustomAppBarHome({
    super.key,
    this.onPressedSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, left: 5, bottom: 10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: const Color(0xff8D6DFE),
          borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(70))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Hi...",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: "Exo 2",
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'assets/image/logo.png',
                  width: 100,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 5, right: 60),
            width: 350,
            height: 45,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search here",
                    hintStyle: const TextStyle(
                        color: Colors.grey, fontFamily: "Exo 2"),
                    suffixIcon: IconButton(
                        onPressed: onPressedSearch,
                        icon: const Icon(Icons.search_sharp))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
