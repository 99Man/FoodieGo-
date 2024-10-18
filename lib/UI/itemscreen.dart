import 'package:flutter/material.dart';
import 'package:project_1/UI/individualitem.dart';
import 'package:project_1/UI/store.dart';
import 'package:project_1/constant/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  bool isBottomContainerVisible = false;
  List<Widget> animatedFruits = [];

  void addFruitToBasket(
      String imagePath, Offset startPosition, Offset endPosition, String Name) {
    setState(() {
      animatedFruits.add(AnimatedFruit(
        imagePath: imagePath,
        startPosition: startPosition,
        endPosition: endPosition,
        FruitName: Name,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: getAppBar(context, 'Produces', 'asset/icons/backarrow.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(clipBehavior: Clip.none, children: [
              // Column(
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //     Container(
              //       // height: getHeigth(context),
              //       decoration: BoxDecoration(
              //         color: const Color(0xFFE9E9E9),
              //         borderRadius: BorderRadius.circular(19),
              //       ),
              //       child: Padding(
              //         padding: const EdgeInsets.only(
              //             top: 17, bottom: 17, right: 16, left: 25),
              //         child: Row(
              //           children: [
              //             Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Row(
              //                   children: [
              //                     text("Fruits Produce", 15, Color(0xFF00AB59),
              //                         FontWeight.w500),
              //                     8.widthBox,
              //                     text("\$17.54", 15, Colors.black,
              //                         FontWeight.w600)
              //                   ],
              //                 ),
              //                 text("5 items", 10, Color(0xFF2F2F2F),
              //                     FontWeight.w400),
              //                 7.heightBox,
              //                 Row(
              //                   children: [
              //                     SizedBox(
              //                       width: 21,
              //                       height: 21,
              //                       child: Image.asset(
              //                         "asset/images/yellowcake.png",
              //                         fit: BoxFit.cover,
              //                       ),
              //                     ),
              //                     4.widthBox,
              //                     text("Walli Vendor", 10, Color(0xFF2F2F2F),
              //                         FontWeight.w400),
              //                   ],
              //                 ),
              //               ],
              //             ),
              //             const Spacer(),
              //             Container(
              //               width: 83,
              //               height: 40,
              //               decoration: BoxDecoration(
              //                 color: Color(0xFFF9B233),
              //                 borderRadius: BorderRadius.circular(11),
              //               ),
              //               child: Center(
              //                 child: text(
              //                     "Add", 15, Colors.white, FontWeight.w500),
              //               ),
              //             ).onTap(() {
              //               setState(() {
              //                 isBottomContainerVisible =
              //                     !isBottomContainerVisible;
              //               });
              //             }),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              Container(
                height: getHeigth(context),
                width: getWidth(context),
                color: Colors.red,
              ),
              AnimatedFruit(
                imagePath: "asset/images/watermelon.png",
                startPosition: Offset(
                    isPortrait ? screenWidth * 0.4 : screenWidth * 0.46,
                    isPortrait ? screenHeight * -0.12 : screenHeight * -0.35),
                endPosition: Offset(
                    isPortrait ? screenWidth * 0.13 : screenWidth * 0.13,
                    isPortrait ? screenHeight * -0.68 : screenHeight * -0.68),
                FruitName: "Watermelon(M)",
              ),
              AnimatedFruit(
                imagePath: "asset/images/banana.png",
                startPosition: Offset(
                    isPortrait ? screenWidth * 0.2 : screenWidth * 0.33,
                    isPortrait ? screenHeight * -0.12 : screenHeight * -0.38),
                endPosition: Offset(screenWidth * 0.05, screenHeight * -0.36),
                FruitName: "Banana(6)",
              ),
              AnimatedFruit(
                  imagePath: "asset/images/grapes.png", 
                  startPosition: Offset(
                      isPortrait ? screenWidth * 0.55 : screenWidth * 0.4,
                      isPortrait ? screenHeight * -0.12 : screenHeight * -0.35),
                  endPosition: Offset(
                      isPortrait ? screenWidth * 0.34 : screenWidth * 0.34,
                      isPortrait ? screenHeight * -0.47 : screenHeight * -0.58),
                  FruitName: "Red Grapes (500 g)"),
              AnimatedFruit(
                  imagePath: "asset/images/lemon.png",
                  startPosition: Offset(
                      isPortrait ? screenWidth * 0.3 : screenWidth * 0.51,
                      isPortrait ? screenHeight * -0.12 : screenHeight * -0.35),
                  endPosition: Offset(
                      isPortrait ? screenWidth * 0.58 : screenWidth * 0.65,
                      isPortrait ? screenHeight * -0.64 : screenHeight * -0.64),
                  FruitName: "Lemon (250g)"),
              AnimatedFruit(
                imagePath: "asset/images/peer.png",
                startPosition: Offset(
                    isPortrait ? screenWidth * 0.45 : screenWidth * 0.4,
                    isPortrait ? screenHeight * -0.12 : screenHeight * -0.35),
                endPosition: Offset(
                    isPortrait ? screenWidth * 0.7 : screenWidth * 0.78,
                    isPortrait ? screenHeight * -0.38 : screenHeight * -0.38),
                FruitName: "Peer (500g)",
              ),
              // Positioned(
              //   top: isPortrait ? -82 : -110,
              //   left: 0,
              //   right: 0,
              //   child: Align(
              //     alignment: Alignment.center,
              //     child: SizedBox(
              //         width: isPortrait ? 219 : 320,
              //         height: isPortrait ? 93.02 : 120,
              //         child: Image.asset(
              //           "asset/images/simplebasket.png",
              //           fit: BoxFit.cover,
              //         )),
              //   ),
              // ),
            ]),
            if (isBottomContainerVisible) 21.heightBox,
            if (isBottomContainerVisible)
              Positioned(
                bottom: 0,
                child: Row(
                  children: [
                    Expanded(
                      child: IntrinsicHeight(
                        child: Container(
                          width: getWidth(context),
                          decoration: BoxDecoration(
                            color: const Color(0xFF00AB59),
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 23.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text("Shopping Bag", 15, Colors.white,
                                    FontWeight.w500),
                                7.heightBox,
                                const Spacer(),
                                text("\$17.54", 15, Colors.white,
                                    FontWeight.w600),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    9.widthBox,
                    SizedBox(
                      width: 67,
                      height: 64,
                      child: Image.asset(
                        "asset/icons/bigyellowcake.png",
                      ),
                    ).onTap(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Store()));
                    })
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

AppBar getAppBar(BuildContext context, String title, String imagePath) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: const SizedBox.shrink(),
    flexibleSpace: Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(imagePath),
            ).onTap(() {
              Navigator.pop(context);
            }),
            text(
              title,
              20,
              const Color(0xFFFFFFFF),
              FontWeight.w600,
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    ),
  );
}

class AnimatedFruit extends StatefulWidget {
  final String imagePath;
  final Offset startPosition;
  final Offset endPosition;
  final String FruitName;

  const AnimatedFruit({
    Key? key,
    required this.imagePath,
    required this.startPosition,
    required this.endPosition,
    required this.FruitName,
  }) : super(key: key);

  @override
  _AnimatedFruitState createState() => _AnimatedFruitState();
}

class _AnimatedFruitState extends State<AnimatedFruit>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: widget.startPosition,
      end: widget.endPosition,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isVisible = true;
        });
      }
    });

    Future.delayed(Duration.zero, () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Positioned(
          left: _animation.value.dx,
          top: _animation.value.dy,
          child: GestureDetector(
            onTap: () {
              print("${widget.FruitName}");
              // if (widget.FruitName == "Watermelon(M)") {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => const Individualitem()));
              // }
            },
            child: Column(
              children: [
                Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    widget.imagePath,
                    width: 81,
                    height: 81,
                  ),
                ),
                AnimatedOpacity(
                  opacity: isVisible ? 1 : 0,
                  duration: const Duration(milliseconds: 500),
                  child: IntrinsicWidth(
                    child: Container(
                      height: 23,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(11.5)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: text(widget.FruitName, 10, Color(0xFF2F2F2F),
                              FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
