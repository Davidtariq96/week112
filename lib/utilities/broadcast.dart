import 'package:flutter/material.dart';
import 'package:week10/utilities/tableview.dart';
import 'package:week10/utilities/dots.dart';

class Broadcast extends StatelessWidget {
  final String image;
  final String headingOne;
  final String headingTwo;
  final IconData? label;
  const Broadcast({
    Key? key,
    required this.image,
    required this.headingOne,
    required this.headingTwo,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0XFF0B0B15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 90.0,
            height: 60,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          TableView(
            heading1: headingOne,
            heading2: headingTwo,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Row(
            children: [
              const Dots(),
              const Dots(),
              const Dots(),
              const Dots(),
              SizedBox(
                width: 7,
              ),
              Icon(
                label,
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
  }
}
