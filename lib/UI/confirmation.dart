import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_1/UI/selectvoucher.dart';
import 'package:project_1/constant/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset(
              "asset/icons/blackbackarrow.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        title:
            text("Order Confirmation", 20, Color(0xFF2F2F2F), FontWeight.w600),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 26.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: text("Store Details", 15, Color(0xFF2F2F2F),
                          FontWeight.w500),
                    ),
                    12.heightBox,
                    Container(
                      width: getWidth(context),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00AB59),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: ListTile(
                        leading: iconTile("asset/images/smallcake.png",
                            const Color(0xFFF23F39)),
                        title: text(
                            "Billy Vendor", 15, Colors.white, FontWeight.w400),
                        subtitle: text("Main Street Downtown", 12, Colors.white,
                            FontWeight.w400),
                        trailing: Image.asset(
                          "asset/icons/location2.png",
                          width: 13,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 14),
                      child: text("Order Items", 15, Color(0xFF2F2F2F),
                          FontWeight.w500),
                    ),
                    IntrinsicHeight(
                      child: Container(
                        width: getWidth(context),
                        decoration: BoxDecoration(
                            color: Color(0xFFE9E9E9),
                            borderRadius: BorderRadius.circular(19)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 22.0, vertical: 22),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                          width: 47,
                                          height: 54,
                                          child: Image.asset(
                                              "asset/images/basket1.png")),
                                      19.widthBox,
                                      text("Fruits Produce", 15, Colors.black,
                                          FontWeight.w500),
                                    ],
                                  ),
                                  text("\$17.54", 15, Color(0xFF00AB59),
                                      FontWeight.w600)
                                ],
                              ),
                              18.heightBox,
                              text("5 items", 15, Color(0xFFF9B233),
                                  FontWeight.w600),
                              7.heightBox,
                              orderItem(
                                  "asset/images/peer.png", "Peer", "500g"),
                              3.heightBox,
                              orderItem(
                                  "asset/images/lemon.png", "Lemon", "250g"),
                              3.heightBox,
                              orderItem("asset/images/grapes.png", "Red Grapes",
                                  "500g"),
                              3.heightBox,
                              orderItem("asset/images/watermelon.png",
                                  "Watermelon", "Medium"),
                              3.heightBox,
                              orderItem(
                                  "asset/images/banana.png", "Banana", "6"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 13),
                      child: text(
                          "Vouchers", 15, Color(0xFF2F2F2F), FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectVoucher()));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: Center(
                                child: text("Select Vouchers worth 17.54", 15,
                                    Color(0xFF00AB59), FontWeight.w500)),
                          ),
                          CustomPaint(
                            size: Size(MediaQuery.of(context).size.width, 60),
                            painter: DottedBorderPainter(),
                          ),
                        ],
                      ),
                    ),
                    100.heightBox,
                  ],
                ),
              ),
            ),
            Container(
              width: getWidth(context),
              height: 56,
              decoration: BoxDecoration(
                color: Color(0xFFF9B233),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Center(
                  child: text("Next", 15, Colors.white, FontWeight.w500)),
            )
          ],
        ),
      ),
    );
  }
}

class DottedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    double dashWidth = 7.0;
    double dashSpace = 6.0;

    Path path = Path();
    path.addRRect(RRect.fromRectAndRadius(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Radius.circular(19),
    ));

    PathMetrics pathMetrics = path.computeMetrics();
    for (PathMetric pathMetric in pathMetrics) {
      double distance = 0.0;
      while (distance < pathMetric.length) {
        Path extractedPath =
            pathMetric.extractPath(distance, distance + dashWidth);
        canvas.drawPath(extractedPath, paint);
        distance += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
