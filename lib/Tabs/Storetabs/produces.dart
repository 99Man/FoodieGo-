import 'package:flutter/material.dart';
import 'package:project_1/constant/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class Produces extends StatelessWidget {
  const Produces({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: getWidth(context),
              decoration: BoxDecoration(
                  color: Color(0xFF00AB59),
                  borderRadius: BorderRadius.circular(19)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text("Search Items", 13, Colors.white, FontWeight.w500),
                    SizedBox(
                        width: 18,
                        height: 18,
                        child: Image.asset("asset/icons/itemsearch.png"))
                  ],
                ),
              ),
            ),
            16.heightBox,
            Column(
              children: [
                item("Fruits Produce", "5 items", "17.54",
                    "asset/images/basket1.png"),
                11.heightBox,
                item("Healthy Produce", "5 items", "10.56",
                    "asset/images/basket2.png"),
                11.heightBox,
                item("Banana", "6", "10.56", "asset/images/banana.png"),
                11.heightBox,
                item("Watermelon", "M", "10.56", "asset/images/watermelon.png"),
                11.heightBox,
                item("Fruits Produce", "5 items", "17.54",
                    "asset/images/basket1.png"),
                100.heightBox
              ],
            )
          ],
        ),
      ),
    );
  }
}
