import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week10/todo/data.dart';
import 'todo/add_task.dart';
import 'todo/todo_page.dart';
import 'slider.dart';
import 'model/model.dart';
import 'pages/play.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'utilities/broadcast.dart';
import 'slider.dart';
import 'pages/bullet_proof.dart';
import 'pages/profile.dart';
import 'pages/stations.dart';
import 'pages/event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final pageController = PageController();
  int currentPage = 0;
  List pages = [
    const BulletProof(),
    const Stations(),
    const Play(),
    const EventPage(),
    const ProfilePage()
  ];
  // void onClick(int num) {
  //   if (num == 1) {
  //     setState(() {
  //       result = num;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider<Data>(create: (context) => Data())],
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: const Color(0XFFE4EAF7),
          appBar: AppBar(
            backgroundColor: const Color(0XFFE4EAF7),
            elevation: 0,
            title: const Text(
              "TODO",
              style: TextStyle(color: Colors.black),
            ),
            actions: [Image.asset("icons/logo.png")],
          ),
          // backgroundColor: const Color(0XFF2D2C3C),
          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: currentPage,
          //   onTap: (index) => setState(() => currentPage = index),
          //   type: BottomNavigationBarType.fixed,
          //   selectedItemColor: const Color(0XFFFB6580),
          //   unselectedItemColor: const Color(0XFF5C5E70),
          //   backgroundColor: const Color(0XFFD4DFF8),
          //   items: [
          //     buildBottomNavigationBarItem("icons/home.png", "Home", 0),
          //     buildBottomNavigationBarItem("icons/Radio.png", "Stations", 1),
          //     buildBottomNavigationBarItem("icons/podcasts.png", 'Podcast', 2),
          //     buildBottomNavigationBarItem("icons/events.png", "Events", 3),
          //     buildBottomNavigationBarItem("icons/profile.png", "Profile", 4),
          //   ],
          // ),
          body: Column(
            children: [
              const Expanded(
                flex: 4,
                child: TodoPage(),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: const Color(0XFFD4DFF8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("icons/check.png"),
                        Image.asset("icons/list.png"),
                        Builder(builder: (context) {
                          return TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AddNewTask()));
                              },
                              child: Image.asset("icons/add.png"));
                        }),
                      ],
                    ),
                  ))
            ],
          ),
          // pages[currentPage]
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      String imageUrl, String label, int count) {
    return BottomNavigationBarItem(
      icon: SizedBox(
        height: 40,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: currentPage == count ? const Color(0XFFFB6580) : null,
              ),
              height: 5,
              width: 40,
            ),
            Expanded(child: Container()),
            Image.asset(
              imageUrl,
              color:
                  currentPage == count ? const Color(0XFFFB6580) : Colors.grey,
            ),
          ],
        ),
      ),
      label: label,
    );
  }
}
