import 'package:flutter/material.dart';
import 'package:week10/utilities/dots.dart';
import 'package:week10/utilities/broadcast.dart';
import 'package:week10/slider.dart';
import 'package:week10/model/model.dart';

class BulletProof extends StatelessWidget {
  const BulletProof({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/logo.png"),
                                fit: BoxFit.cover),
                          ),
                          child: SafeArea(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: const [
                                    Dots(),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Dots(),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Dots(),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Dots()
                                  ],
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                SafeArea(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Tabitha Naser",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        "BulletProof",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: const Color(0XFF13131A),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 170),
                                child: Text(
                                  "Similar Broadcast",
                                  style: TextStyle(color: Colors.white),
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
                                        headingOne:
                                            'jason start running shit since day one',
                                        image: 'images/nube.jpg'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Broadcast(
                                        headingTwo: 'Sounds of victory',
                                        headingOne:
                                            'jason start running shit since day one',
                                        image: 'images/burak.jpg'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Broadcast(
                                        headingTwo: 'Mason and the cute queen',
                                        headingOne: 'angry lion in Australia',
                                        image: 'images/alesia.jpg'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Broadcast(
                                        headingTwo: 'Grace found me abundantly',
                                        headingOne:
                                            'Apple of worship and praise',
                                        image: 'images/nube.jpg')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    left: 20,
                    top: 220,
                    // bottom: 320,
                    child: SizedBox(
                      height: 200,
                      width: 400,
                      child: PageView.builder(
                          itemCount: itemList.length,
                          controller: PageController(viewportFraction: 0.5),
                          itemBuilder: (context, index) {
                            return SliderItem(itemIndex: index);
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
