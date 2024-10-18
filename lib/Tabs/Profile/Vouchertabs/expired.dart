import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constant/Widgets/ticket-img.dart';

class Expired extends StatelessWidget {
  const Expired({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          16.heightBox,
          const Ticket(price: "50.50", date: "10 July 2022", status: "Expired")
        ],
      ),
    );
  }
}
