import 'package:flutter/material.dart';
import 'package:project_1/constant/helper.dart';

class Produce extends StatelessWidget {
  const Produce({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            getBaseket(
                context,
                "Fruits Produce",
                "5 items",
                "Walli Vendor",
                "asset/images/basket1.png",
                "asset/images/yellowcake.png",
                "17.54"),
            getBaseket(
                context,
                "Healthy Produce",
                "5 items",
                "Jolly’s Farm Stand",
                "asset/images/basket2.png",
                "asset/images/greencake.png",
                "10.56"),
            getBaseket(
                context,
                "Family Produce",
                "10 items",
                "Jolly’s Farm Stand",
                "asset/images/basket3.png",
                "asset/images/greencake.png",
                "22.51"),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
