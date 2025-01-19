import 'package:ecommerce_mobile_app/constants.dart';
import 'package:flutter/material.dart';

class MySearchBAR extends StatelessWidget {
  const MySearchBAR({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcontentColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: const Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 30,
          ),
          SizedBox(width: 10),
          Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search...", border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
