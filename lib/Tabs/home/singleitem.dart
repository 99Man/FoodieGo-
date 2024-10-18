import 'package:flutter/material.dart';
import 'package:project_1/constant/helper.dart';

class Singleitem extends StatelessWidget {
  const Singleitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            getSingleItem(
                context,
                "Watermelon",
                "Medium",
                "Walli Vendor",
                "asset/images/watermelon.png",
                "asset/images/yellowcake.png",
                "17.54"),
            getSingleItem(
                context,
                "Banana",
                "6 Banana’s",
                "Jolly’s Farm Stand",
                "asset/images/banana.png",
                "asset/images/greencake.png",
                "10.56"),
            getSingleItem(
                context,
                "Potato",
                "1 kg",
                "Jolly’s Farm Stand",
                "asset/images/potato.png",
                "asset/images/greencake.png",
                "3.56"),
          ],
        ),
      ),
    );
  }
}
