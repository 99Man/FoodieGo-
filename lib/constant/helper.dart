import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/UI/individualitem.dart';
import 'package:project_1/UI/itemscreen.dart';
import 'package:velocity_x/velocity_x.dart';

double getWidth(context) {
  return MediaQuery.of(context).size.width;
}

double getHeigth(context) {
  return MediaQuery.of(context).size.height;
}

Text text(String text, double size, Color color, FontWeight weight) {
  return Text(
    text,
    style: GoogleFonts.montserrat(
        color: color, fontSize: size, fontWeight: weight),
  );
}

Widget item(
  String title,
  String subtitle,
  String price,
  String imagePath,
) {
  return IntrinsicHeight(
    child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFE9E9E9), borderRadius: BorderRadius.circular(19)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
          child: Row(
            children: [
              SizedBox(
                  width: 47,
                  height: 54,
                  child: Image.asset(imagePath)),
              16.widthBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(title, 15, const Color(0xFF00AB59), FontWeight.w500),
                  text(subtitle, 10, Color(0xFF2F2F2F), FontWeight.w500),
                  7.heightBox,
                  text("\$" + price, 10, Color(0xFF2F2F2F), FontWeight.w400)
                ],
              ),
              Spacer(),
              Container(
                height: 40,
                width: 83,
                decoration: BoxDecoration(
                  color: Color(0xFFF9B233),
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Center(
                  child: text("Add", 15, Colors.white, FontWeight.w500),
                ),
              ),
            ],
          ),
        )),
  );
}

Widget getBaseket(
  BuildContext context,
  final String title,
  final String subtitle,
  final String vendorName,
  final String imagePath,
  final String iconPath,
  final String price,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: IntrinsicHeight(
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xFFE9E9E9),
              borderRadius: BorderRadius.circular(19)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
            child: Row(
              children: [
                SizedBox(
                        width: 47,
                        height: 54,
                        child: Image.asset(imagePath))
                    .onTap(() {
                  showBasketScreen(context);
                }),
                16.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text(title, 15, const Color(0xFF00AB59), FontWeight.w500),
                    text(subtitle, 10, Color(0xFF2F2F2F), FontWeight.w500),
                    7.heightBox,
                    Row(
                      children: [
                        SizedBox(
                            width: 21,
                            height: 21,
                            child: Image.asset(
                              iconPath,
                              fit: BoxFit.cover,
                            )),
                        4.widthBox,
                        text(vendorName, 10, Color(0xFF2F2F2F), FontWeight.w400)
                      ],
                    )
                  ],
                ),
                Spacer(),
                text("\$" + price, 15, Color(0xFF00AB59), FontWeight.w600)
              ],
            ),
          )),
    ),
  );
}

void showItemScreen(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'Dismiss',
    barrierColor: Colors.black.withOpacity(0.54),
    pageBuilder: (context, anim1, anim2) {
      return const Individualitem();
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return FadeTransition(opacity: anim1, child: child);
    },
  );
}

void showBasketScreen(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'Dismiss',
    barrierColor: Colors.black.withOpacity(0.54),
    pageBuilder: (context, anim1, anim2) {
      return const ItemDetails();
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return FadeTransition(opacity: anim1, child: child);
    },
  );
}

Widget getFruitName(String fruitName) {
  return IntrinsicWidth(
    stepWidth: 10,
    child: Container(
      height: 23,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.5),
          color: Color(0xFFFFFFFF).withOpacity(0.8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Text(
            fruitName,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: Color(0xFF2F2F2F)),
          ),
        ),
      ),
    ),
  );
}

Padding getSingleItem(
  BuildContext context,
  final String title,
  final String subtitle,
  final String vendorName,
  final String imagePath,
  final String iconPath,
  final String price,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: IntrinsicHeight(
      child: Container(
          width:getWidth(context),
          decoration: BoxDecoration(
              color: Color(0xFFE9E9E9),
              borderRadius: BorderRadius.circular(19)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
            child: Row(
              children: [
                SizedBox(
                    width: 47,
                    height: 54,
                    child:
                        Image.asset(imagePath)),
                16.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text(title, 15, const Color(0xFF00AB59), FontWeight.w500),
                    text(subtitle, 10, Color(0xFF2F2F2F), FontWeight.w500),
                    7.heightBox,
                    Row(
                      children: [
                        SizedBox(
                            width: 21,
                            height: 21,
                            child: Image.asset(
                              iconPath,
                              fit: BoxFit.cover,
                            )),
                        4.widthBox,
                        text(vendorName, 10, Color(0xFF2F2F2F), FontWeight.w400)
                      ],
                    )
                  ],
                ),
                Spacer(),
                text("\$" + price, 15, Color(0xFF00AB590), FontWeight.w600)
              ],
            ),
          )),
    ),
  );
}

Row orderItem(String imagePath, String name, String weigth) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          SizedBox(
            width: 27,
            height: 27,
            child: Image.asset(imagePath),
          ),
          8.widthBox,
          text(name, 15, Color(0xFF2F2F2F), FontWeight.w500),
        ],
      ),
      text(weigth, 13, Color(0xFF00AB59), FontWeight.w500)
    ],
  );
}

Widget iconTile(String iconPath, Color color) {
  return CircleAvatar(
    backgroundColor: color,
    radius: 20,
    child: Image.asset(iconPath, width: 20),
  );
}
