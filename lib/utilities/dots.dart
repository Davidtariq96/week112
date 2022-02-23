import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  const Dots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 10.0,
      height: 10.0,
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
    );
  }
}
