import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_1/constant/Widgets/ticket-img.dart';
import 'package:project_1/constant/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class SelectVoucher extends StatefulWidget {
  const SelectVoucher({super.key});

  @override
  State<SelectVoucher> createState() => _SelectVoucherState();
}

class _SelectVoucherState extends State<SelectVoucher> {
  int? _selectedTicketIndex;
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
        title: text("Select Vouchers", 20, Color(0xFF2F2F2F), FontWeight.w600),
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
                      child: text("Voucher Amount Required", 15,
                          Color(0xFF2F2F2F), FontWeight.w500),
                    ),
                    12.heightBox,
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF00AB59),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0, left: 10),
                        child: ListTile(
                            title: text("Order Amount", 15, Colors.white,
                                FontWeight.w400),
                            subtitle: text(
                                "Select a voucher worth this or more",
                                12,
                                Colors.white,
                                FontWeight.w400),
                            trailing: Container(
                              width: 94,
                              height: 58,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF9B233),
                                borderRadius: BorderRadius.circular(19),
                              ),
                              child: Center(
                                  child: text("\$17.54", 20, Colors.white,
                                      FontWeight.w700)),
                            )),
                      ),
                    ),
                    21.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: text("Available Vouchers", 15, Color(0xFF2F2F2F),
                          FontWeight.w500),
                    ),
                    20.heightBox,
                    VoucherTicket(
                      price: "50.00",
                      date: "12 July 2022",
                      status: "Expiry",
                      isSelected: _selectedTicketIndex == 0,
                      onTap: () {
                        setState(() {
                          _selectedTicketIndex = 0;
                        });
                      },
                    ),
                    19.heightBox,
                    VoucherTicket(
                      price: "20.00",
                      date: "12 July 2022",
                      status: "Expiry",
                      isSelected: _selectedTicketIndex == 1,
                      onTap: () {
                        setState(() {
                          _selectedTicketIndex = 1;
                        });
                      },
                    ),
                    19.heightBox,
                    VoucherTicket(
                      price: "10.00",
                      date: "12 July 2022",
                      status: "Expiry",
                      isSelected: _selectedTicketIndex == 2,
                      onTap: () {
                        setState(() {
                          _selectedTicketIndex = 2;
                        });
                      },
                    ),
                    19.heightBox,
                    Container(
                      width: getWidth(context),
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Center(
                        child: text("Get More Vouchers", 15, Colors.white,
                            FontWeight.w500),
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
