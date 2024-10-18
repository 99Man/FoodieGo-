import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/Tabs/Profile/Ordertabs/previousorder.dart';

import 'Ordertabs/currentorder.dart';
class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isPortrait = mediaQuery.orientation == Orientation.portrait;

    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return OrientationBuilder(
      builder: (context, orientation) {
        return Padding(
          padding: isPortrait
              ? EdgeInsets.symmetric(horizontal: screenWidth * 0.04)
              : EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                width: screenWidth,
                height: isPortrait ? screenHeight * 0.07 : screenHeight * 0.16,
                child: IntrinsicHeight(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFE9E9E9),
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TabBar(
                        controller: _tabController,
                        unselectedLabelColor: const Color(0xFF000000),
                        labelColor: Colors.white,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          color: const Color(0xFFF9B233),
                          borderRadius: BorderRadius.circular(19),
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: [
                          Tab(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Current",
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Previous",
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    CurrentOrder(),
                    PreviousOrder(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
