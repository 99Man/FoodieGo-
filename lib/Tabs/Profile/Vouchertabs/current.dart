import 'package:flutter/material.dart';
import 'package:project_1/constant/Widgets/ticket-img.dart';
import 'package:velocity_x/velocity_x.dart';

class Current extends StatelessWidget {
  const Current({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          16.heightBox,
          Ticket(
            status: "Expiry",
            date: "12 July 2022",
            price: "50.00",
          ),
          16.heightBox,
          Ticket(
            status: "Expiry",
            date: "12 July 2022",
            price: "20.00",
          ),
          16.heightBox,
          Ticket(
            status: "Expiry",
            date: "12 July 2022",
            price: "100.00",
          ),
          150.heightBox
        ],
      ),
    );
  }
}
