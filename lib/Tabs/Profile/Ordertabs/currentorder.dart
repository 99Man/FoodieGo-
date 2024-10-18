import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/constant/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class CurrentOrder extends StatelessWidget {
  const CurrentOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              width: getWidth(context),
              decoration: BoxDecoration(
                color: Color(0xFFE9E9E9),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 18.0, right: 20, top: 13, bottom: 17),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order ID 76372",
                              style: GoogleFonts.montserrat(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(height: 7),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: SizedBox(
                                    width: 35,
                                    height: 20.68,
                                    child:
                                        Image.asset('asset/images/basket.png'),
                                  ),
                                ),
                                Text(
                                  "Fruits Produce",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "\$17.54",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF00AB59),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Vouchers",
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "\$10.00",
                              style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF00AB59),
                              ),
                            ),
                            Text(
                              "\$10.00",
                              style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF00AB59),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipOval(
                              child: Container(
                                width: 22,
                                height: 22,
                                color: Color(0xFFF9B233),
                                child: SizedBox(
                                  width: 11.04,
                                  height: 11.21,
                                  child: Image.asset('asset/images/cake2.png'),
                                ),
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Walli Vendor",
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(width: 3.5),
                            Image.asset('asset/icons/arrow.png', width: 4),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 28,
                              height: 20.68,
                              child: Image.asset('asset/icons/bike.png'),
                            ),
                            Text(
                              "15 min",
                              style: GoogleFonts.montserrat(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            100.heightBox
          ],
        ),
      ),
    );
  }
}
