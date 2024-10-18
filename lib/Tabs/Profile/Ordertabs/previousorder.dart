import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/UI/orderdetail.dart';
import 'package:project_1/constant/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class PreviousOrder extends StatelessWidget {
  const PreviousOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => OrderDetail()));
            },
            child: Container(
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
                              "12 jan 2022",
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
          ),
          SizedBox(
            height: 16,
          ),
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
                                  child: Image.asset('asset/images/basket.png'),
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
                          Row(
                            children: [
                              SizedBox(
                                width: 40,
                                height: 30,
                                child: Image.asset(
                                  'asset/images/banana2.png',
                                ),
                              ),
                              10.widthBox,
                              Text(
                                "6x Banana's",
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "\$10.56",
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
                            "\$20.00",
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
                            child: Image.asset(
                              'asset/icons/bike.png',
                            ),
                          ),
                          Text(
                            "10 jan 2022",
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
    );
  }
}
