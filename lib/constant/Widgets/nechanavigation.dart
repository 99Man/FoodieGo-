import 'package:flutter/material.dart';
import 'package:project_1/Bottom%20Bar/comment.dart';
import 'package:project_1/Bottom%20Bar/homescreen.dart';
import 'package:project_1/Bottom%20Bar/profile.dart';
import 'package:project_1/constant/helper.dart';

import '../../Bottom Bar/filescreen.dart';
import '../../Bottom Bar/search.dart';

class Nechanavigation extends StatefulWidget {
  const Nechanavigation({super.key});

  @override
  State<Nechanavigation> createState() => _NechanavigationState();
}

class _NechanavigationState extends State<Nechanavigation> {
  int currentTab = 3;
  bool isFloatingButtonTapped = false;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Profile();

  final List<Widget> screens = [
    const FileScreen(),
    const Comment(),
    const Search(),
    const Profile(),
    const Homescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
              child: Container(
                height: 61,
                width: getWidth(context),
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 19),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(19), bottom: Radius.circular(19)),
                ),
                child: BottomAppBar(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped = false;
                                currentScreen = const FileScreen();
                                currentTab = 0;
                              });
                            },
                            child: SizedBox(
                              width: 21,
                              height: 21,
                              child: Image.asset(
                                'asset/icons/file.png',
                                fit: BoxFit.cover,
                                color: currentTab == 0
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped = false;
                                currentScreen = const Comment();
                                currentTab = 1;
                              });
                            },
                            child: SizedBox(
                              width: 21,
                              height: 21,
                              child: Image.asset(
                                'asset/icons/comment2.png',
                                fit: BoxFit.cover,
                                color: currentTab == 1
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped = false;
                                currentScreen = const Search();
                                currentTab = 2;
                              });
                            },
                            child: SizedBox(
                              width: 21,
                              height: 21,
                              child: Image.asset(
                                'asset/icons/search.png',
                                color: currentTab == 2
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped = false;
                                currentScreen = const Profile();
                                currentTab = 3;
                              });
                            },
                            child: SizedBox(
                              width: 21,
                              height: 21,
                              child: Image.asset(
                                'asset/icons/profile.png',
                                color: currentTab == 3
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            // Landscape layout
            return ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(19), bottom: Radius.circular(19)),
                ),
                child: BottomAppBar(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 70,
                          ),
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped = false;
                                currentScreen = const FileScreen();
                                currentTab = 0;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'asset/icons/file.png',
                                color: currentTab == 0
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped = false;
                                currentScreen = const Comment();
                                currentTab = 1;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'asset/icons/comment.png',
                                color: currentTab == 1
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped = false;
                                currentScreen = const Search();
                                currentTab = 2;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'asset/icons/search.png',
                                color: currentTab == 2
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          MaterialButton(
                            minWidth: 60,
                            onPressed: () {
                              setState(() {
                                isFloatingButtonTapped = false;
                                currentScreen = const Profile();
                                currentTab = 3;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Image.asset(
                                'asset/icons/profile.png',
                                color: currentTab == 3
                                    ? Colors.green
                                    : Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
      floatingActionButton: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Stack(
              children: [
                Positioned(
                  bottom: 51,
                  left: MediaQuery.of(context).size.width / 2 - 29,
                  child: SizedBox(
                    width: 58,
                    height: 58,
                    child: FloatingActionButton(
                      elevation: 0,
                      backgroundColor:
                          isFloatingButtonTapped ? Colors.green : Colors.black,
                      onPressed: () {
                        setState(() {
                          isFloatingButtonTapped = true;
                          currentScreen = const Homescreen();
                          currentTab = 4;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: SizedBox(
                        width: 18.32,
                        height: 18.32,
                        child: Image.asset('asset/icons/home.png',
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Stack(
              children: [
                Positioned(
                  bottom: 55,
                  left: MediaQuery.of(context).size.width / 2 - 40,
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: FloatingActionButton(
                      elevation: 0,
                      backgroundColor:
                          isFloatingButtonTapped ? Colors.green : Colors.black,
                      onPressed: () {
                        setState(() {
                          isFloatingButtonTapped = true;
                          currentScreen = const Homescreen();
                          currentTab = 4;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: SizedBox(
                        width: 18.32,
                        height: 18.32,
                        child: Image.asset('asset/icons/home.png',
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
