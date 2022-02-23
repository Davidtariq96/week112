import 'package:flutter/material.dart';
import '../utilities/broadcast.dart';

class Stations extends StatelessWidget {
  const Stations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFF2D2C3C),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Radio Stations",
                      style: TextStyle(color: Colors.white, fontSize: 40.0),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 40,
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: const [
                    Text(
                      "Popular Broadcast",
                      style: TextStyle(color: Color(0XFFFB6580), fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Radio Genre",
                      style: TextStyle(color: Color(0XFF5C5E6F), fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("images/linked.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Enjoy your day with RadioApp",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text("Tune your radio now",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25))
                          ],
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: const Color(0XFFF11775),
                              padding: const EdgeInsets.all(10.0)),
                          onPressed: () {},
                          child: const Text(
                            "Tune Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: ListView(
                    children: const [
                      Broadcast(
                        headingTwo: 'The great wall of China',
                        headingOne: 'jason start running shit since day one',
                        image: 'images/nube.jpg',
                        label: Icons.favorite,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Broadcast(
                        headingTwo: 'Sounds of victory',
                        headingOne: 'jason start running shit since day one',
                        image: 'images/burak.jpg',
                        label: Icons.favorite,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Broadcast(
                        headingTwo: 'Mason and the cute queen',
                        headingOne: 'angry lion in Australia',
                        image: 'images/alesia.jpg',
                        label: Icons.favorite,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Broadcast(
                        headingTwo: 'Grace found me abundantly',
                        headingOne: 'Apple of worship and praise',
                        image: 'images/sour.jpg',
                        label: Icons.favorite,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Broadcast(
                        headingTwo: 'Sounds of victory',
                        headingOne: 'jason start running shit since day one',
                        image: 'images/burak.jpg',
                        label: Icons.favorite,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Broadcast(
                        headingTwo: 'Grace found me abundantly',
                        headingOne: 'Apple of worship and praise',
                        image: 'images/mendes.jpg',
                        label: Icons.favorite,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Broadcast(
                        headingTwo: 'Sounds of victory',
                        headingOne: 'jason start running shit since day one',
                        image: 'images/burak.jpg',
                        label: Icons.favorite,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
