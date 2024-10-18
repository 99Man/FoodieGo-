import 'package:flutter/material.dart';
import 'package:project_1/UI/itemscreen.dart';
import 'package:project_1/constant/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class Individualitem extends StatefulWidget {
  const Individualitem({super.key});

  @override
  _IndividualitemState createState() => _IndividualitemState();
}

class _IndividualitemState extends State<Individualitem> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "itemclick",
      child: Scaffold(
        backgroundColor: Colors.transparent.withOpacity(0.8),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90.0),
          child: getAppBar(context, 'Produces', 'asset/icons/backarrow.png'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 21),
          child: Stack(clipBehavior: Clip.none, children: [
            Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            "asset/images/watermelonhorizontal.png",
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              text("Size", 15, Colors.white, FontWeight.w500),
                              64.widthBox,
                              Row(
                                children: [
                                  SizedBox(
                                    width: 27,
                                    height: 27,
                                    child: Image.asset("asset/images/S.png"),
                                  ),
                                  9.widthBox,
                                  SizedBox(
                                    width: 27,
                                    height: 27,
                                    child: Image.asset("asset/images/M.png"),
                                  ),
                                  9.widthBox,
                                  SizedBox(
                                    width: 27,
                                    height: 27,
                                    child: Image.asset("asset/images/L.png"),
                                  )
                                ],
                              )
                            ],
                          ),
                          12.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              text("Quantity", 15, Colors.white,
                                  FontWeight.w600),
                              27.widthBox,
                              SizedBox(
                                width: 114,
                                height: 33,
                                child: Image.asset(
                                  "asset/images/upndown.png",
                                  fit: BoxFit.contain,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: IntrinsicHeight(
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xFFE9E9E9),
                                borderRadius: BorderRadius.circular(19)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 18.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          text(
                                              "Watermelon  ",
                                              15,
                                              const Color(0xFF00AB59),
                                              FontWeight.w500),
                                          text(" \$5.54", 15, Colors.black,
                                              FontWeight.w600)
                                        ],
                                      ),
                                      text("Medium", 10, Color(0xFF2F2F2F),
                                          FontWeight.w500),
                                      7.heightBox,
                                      Row(
                                        children: [
                                          SizedBox(
                                              width: 21,
                                              height: 21,
                                              child: Image.asset(
                                                "asset/images/yellowcake.png",
                                                fit: BoxFit.cover,
                                              )),
                                          4.widthBox,
                                          text(
                                              "Walli Vendor",
                                              10,
                                              Color(0xFF2F2F2F),
                                              FontWeight.w400),
                                          4.widthBox,
                                          Image.asset('asset/icons/arrow.png',
                                              width: 3.5),
                                        ],
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 83,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF9B233),
                                        borderRadius:
                                            BorderRadius.circular(11)),
                                    child: Center(
                                      child: text("Add", 15, Colors.white,
                                          FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                    27.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child:
                          text("Recipies", 15, Colors.white, FontWeight.w600),
                    ),
                    recipe(
                        context,
                        "asset/images/recipe1.png",
                        "Watermelon Freshness",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                    recipe(context, "asset/images/recipe2.png", "Melo Drink",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                    recipe(
                        context,
                        "asset/images/recipe3.png",
                        "Melon Margreta",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                    recipe(context, "asset/images/recipe4.png", "Popsicles",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                    100.heightBox
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: EdgeInsets.all(16),
                    width: getWidth(context),
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFF00AB59),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            text("Shopping Bag", 15, Colors.white,
                                FontWeight.w500),
                            2.widthBox,
                            text("2 Items", 15, Colors.white, FontWeight.w500),
                          ],
                        ),
                        text("\$17.54", 15, Colors.white, FontWeight.w600),
                      ],
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

Widget recipe(
    BuildContext context, String imagePath, String title, String recipe) {
  return IntrinsicHeight(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: getWidth(context),
        decoration: BoxDecoration(
            color: Color(0xFFE9E9E9), borderRadius: BorderRadius.circular(19)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Row(
            children: [
              SizedBox(
                  width: 81,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  )),
              7.widthBox,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(title, 15, Color(0xFF00AB59), FontWeight.w500),
                      text(recipe, 12, Color(0xFF2F2F2F), FontWeight.w500),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
