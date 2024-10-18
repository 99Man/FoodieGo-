import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_1/constant/Widgets/ticket-img.dart';
import 'package:project_1/constant/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class VocherConfirm extends StatefulWidget {
  final String status;
  final String date;
  final String price;

  const VocherConfirm({
    Key? key,
    required this.status,
    required this.date,
    required this.price,
  }) : super(key: key);

  @override
  State<VocherConfirm> createState() => _VocherConfirmState();
}

class _VocherConfirmState extends State<VocherConfirm> {
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
                    // 27.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: text("Store Details", 15, Color(0xFF2F2F2F),
                          FontWeight.w500),
                    ),
                    12.heightBox,
                    Container(
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
                        trailing:
                            Image.asset("asset/icons/location2.png", width: 14),
                      ),
                    ),
                    15.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: text("Order Items", 15, Color(0xFF2F2F2F),
                          FontWeight.w500),
                    ),
                    12.heightBox,
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
                    15.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: text(
                          "Vouchers", 15, Color(0xFF2F2F2F), FontWeight.w500),
                    ),
                    11.heightBox,
                    VoucherTicket(
                      status: widget.status,
                      date: widget.date,
                      price: widget.price,
                      onTap: () => VoucherTicket.new,
                      isSelected: true,
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
