import 'package:flutter/material.dart';
import 'package:week10/utilities/dots.dart';
import 'package:week10/utilities/broadcast.dart';
import 'package:week10/slider.dart';
import 'package:week10/model/model.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0XFF2D2C3C),
        appBar: AppBar(
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            )
          ],
          backgroundColor: const Color(0XFF2D2C3C),
          leading: const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text("Profile"),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: const [
                          CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage("images/mendes.jpg"),
                          ),
                          Text(
                            "Gail Forcewind",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          Expanded(
                            child: Text(
                              "jasontariq61@gmail.com",
                              style: TextStyle(color: Color(0XFF5C5E6F)),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 150,
                      width: 400,
                      child: PageView.builder(
                          itemCount: itemList.length,
                          controller: PageController(viewportFraction: 0.5),
                          itemBuilder: (context, index) {
                            return SliderItem(itemIndex: index);
                          }),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20, left: 10),
                            child: Text(
                              "Favourite Radio Stations",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
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
                                      headingOne: 'Apple of worship and praise',
                                      image: 'images/sour.jpg')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
