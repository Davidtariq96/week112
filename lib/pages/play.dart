import 'package:flutter/material.dart';

class Play extends StatelessWidget {
  const Play({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFF2D2C3C),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 170,
              height: 170,
              child: Image.asset("icons/back.png"),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "The Jordan Herbinger Show",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const Text("Celestee Headie",
                style: TextStyle(color: Colors.white)),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "41.08",
                    style: TextStyle(color: Colors.white),
                  ),
                  Image.asset("icons/waves.png"),
                  const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("icons/Previous.png"),
                Image.asset("icons/Play.png"),
                Image.asset("icons/Next.png"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
