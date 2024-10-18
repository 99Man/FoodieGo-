import 'package:flutter/material.dart';
import 'package:project_1/constant/Widgets/ticket-img.dart';
import 'package:project_1/constant/helper.dart';

import 'package:velocity_x/velocity_x.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({super.key});

  Widget _buildStoreDetails(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF00AB59),
        borderRadius: BorderRadius.circular(19),
      ),
      child: ListTile(
        leading:
            _iconTile("asset/images/smallcake.png", const Color(0xFFF23F39)),
        title: text("Billy Vendor", 15, Colors.white, FontWeight.w400),
        subtitle:
            text("Main Street Downtown", 12, Colors.white, FontWeight.w400),
        trailing: Image.asset("asset/icons/location2.png", width: 14),
      ),
    );
  }

  Widget _orderItems(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE9E9E9),
        borderRadius: BorderRadius.circular(19),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildOrderItemRow(
              "asset/images/basket1.png", "Fruits Produce", "\$17.54"),
          18.heightBox,
          text("5 items", 15, const Color(0xFFF9B233), FontWeight.w600),
          7.heightBox,
          ..._buildOrderItemList(),
        ],
      ),
    );
  }

  List<Widget> _buildOrderItemList() {
    return [
      _orderItem("asset/images/peer.png", "Peer", "500g"),
      _orderItem("asset/images/lemon.png", "Lemon", "250g"),
      _orderItem("asset/images/grapes.png", "Red Grapes", "500g"),
      _orderItem("asset/images/watermelon.png", "Watermelon", "Medium"),
      _orderItem("asset/images/banana.png", "Banana", "6"),
    ];
  }

  Widget _buildOrderItemRow(String image, String name, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(image, width: 47, height: 54),
            19.widthBox,
            text(name, 15, Colors.black, FontWeight.w500),
          ],
        ),
        text(price, 15, const Color(0xFF00AB59), FontWeight.w600),
      ],
    );
  }

  Widget _orderItem(String image, String name, String weight) {
    return Row(
      children: [
        Image.asset(image, width: 24, height: 24),
        12.widthBox,
        text(name, 15, Colors.black, FontWeight.w500),
        Spacer(),
        text(weight, 13, const Color(0xFF00AB59), FontWeight.w500),
      ],
    );
  }

  Widget _buildVoucherItem(BuildContext context, String price, String date) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Ticket(price: price, date: date, status: "Expiry"),
        _tickIcon(context),
      ],
    );
  }

  Widget _tickIcon(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: (getHeigth(context) + 24) - getHeigth(context),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 26,
          height: 26,
          child: Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Image.asset(
              "asset/icons/tick.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  Widget _iconTile(String imagePath, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(19),
      ),
      padding: const EdgeInsets.all(8),
      child: Image.asset(imagePath, width: 24, height: 24),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Image.asset("asset/icons/blackbackarrow.png",
              width: 24, height: 24),
        ),
        title: text(
            "Order Confirmation", 20, const Color(0xFF2F2F2F), FontWeight.w600),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 26.heightBox,
                    text("Store Details", 15, const Color(0xFF2F2F2F),
                        FontWeight.w500),
                    12.heightBox,
                    _buildStoreDetails(context),
                    15.heightBox,
                    text("Order Items", 15, const Color(0xFF2F2F2F),
                        FontWeight.w500),
                    12.heightBox,
                    _orderItems(context),
                    13.heightBox,
                    Container(
                        height: 83,
                        width: getWidth(context),
                        decoration: BoxDecoration(
                            color: Color(0xFFE9E9E9),
                            borderRadius: BorderRadius.circular(19)),
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 18, right: 24, top: 12, bottom: 17),
                            child: ListTile(
                              leading: SizedBox(
                                width: 52,
                                height: 44,
                                child: Image.asset("asset/images/banana.png"),
                              ),
                              title: text("6x Bananas", 15, Color(0xFF2F2F2F),
                                  FontWeight.w500),
                              trailing: text("\$10.56", 13, Color(0xFF00AB59),
                                  FontWeight.w500),
                            ))),
                    16.heightBox,
                    text("Vouchers", 15, const Color(0xFF2F2F2F),
                        FontWeight.w500),
                    11.heightBox,
                    _buildVoucherItem(context, "20.00", "12 July 2022"),
                    11.heightBox,
                    _buildVoucherItem(context, "10.00", "12 July 2022"),
                    100.heightBox
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
