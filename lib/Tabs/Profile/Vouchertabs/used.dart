import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constant/Widgets/ticket-img.dart';

class Used extends StatelessWidget {
  const Used({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          16.heightBox,
          Ticket(price: "50.50", date: "12 July 2022", status: "Used")
        ],
      ),
    );
  }
}
