import 'package:flutter/material.dart';
import 'package:week10/model/model.dart';
import 'package:week10/slider.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0XFF2D2C3C),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Events",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Row(
                      children: [
                        Image.asset("icons/book.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Popular Events",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0XFFFB6580),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
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
                height: 40,
              ),
              SizedBox(
                height: 150,
                child: Container(
                  margin: const EdgeInsets.only(left: 18, right: 18),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/linked.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        Text(
                          "DJ SAMX",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Welcome to cubanna lounge Abuja",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "All",
                    style: TextStyle(
                      color: Color(0XFFFB6580),
                    ),
                  ),
                  Text(
                    "Art",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text("Concert", style: TextStyle(color: Colors.grey)),
                  Text("Events", style: TextStyle(color: Colors.grey)),
                  Text("Festivals", style: TextStyle(color: Colors.grey)),
                  Text("KidsFamily", style: TextStyle(color: Colors.grey)),
                ],
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
            ],
          ),
        ),
      ),
    );
  }
}
