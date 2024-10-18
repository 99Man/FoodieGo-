import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/Tabs/home/singleitem.dart';

import '../Tabs/home/produce.dart';
import '../constant/helper.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> options = [
    "Billy Vendor",
    "Jolly's Farm Stand",
    "Billy Vendor",
    "Jolly's Farm Stand"
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, elevation: 0),
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 22),
                  Row(
                    children: [
                      Image.asset("asset/images/tree2.png", width: 60),
                      const SizedBox(width: 5),
                      Expanded(
                        child: ListTile(
                          title: text("Good Morning", 12, Color(0xFF00AB59),
                              FontWeight.w400),
                          subtitle: text("Jessica", 15, Color(0xFF2F2F2F),
                              FontWeight.w400),
                          trailing: IconButton(
                            icon:
                                Image.asset("asset/icons/bell.png", width: 18),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 26),
                  text(
                      "Nearest Vendor", 15, Color(0xFF2F2F2F), FontWeight.w400),
                  const SizedBox(height: 7),
                  _vendorTile(),
                  const SizedBox(height: 16),
                  _sectionTitle("Popular Stores", "View All"),
                  const SizedBox(height: 11),
                  _buildOptions(),
                  const SizedBox(height: 16),
                  _buildTabBar(),
                ],
              ),
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: const [Produce(), Singleitem()],
        ),
      ),
    );
  }

  Widget _vendorTile() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF00AB59),
        borderRadius: BorderRadius.circular(19),
      ),
      child: ListTile(
        leading:
            iconTile("asset/images/smallcake.png", const Color(0xFFF23F39)),
        title: text("Billy Vendor", 15, Colors.white, FontWeight.w400),
        subtitle:
            text("Main Street Downtown", 12, Colors.white, FontWeight.w400),
        trailing: Image.asset("asset/icons/location2.png", width: 14),
      ),
    );
  }

  Widget _sectionTitle(String title, String actionText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text(title, 15, const Color(0xFF2F2F2F), FontWeight.w400),
        text(actionText, 11, const Color(0xFF00AB59), FontWeight.w400),
      ],
    );
  }

  Widget _buildOptions() {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: options.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final color = (index == 0 || index == 2)
              ? const Color(0xFFF23F39)
              : const Color(0xFF33691E);
          return _optionTile(options[index], color);
        },
      ),
    );
  }

  Widget _optionTile(String option, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE9E9E9),
        borderRadius: BorderRadius.circular(19),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        children: [
          iconTile("asset/images/cake2.png", color),
          const SizedBox(width: 5),
          text(option, 15, const Color(0xFF2F2F2F), FontWeight.w400),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      controller: _tabController,
      indicatorColor: const Color(0xFF00AB59),
      indicatorWeight: 3,
      dividerColor: Colors.transparent,
      indicatorPadding: EdgeInsets.only(left: 16, right: 16, bottom: 9, top: 0),
      indicatorSize: TabBarIndicatorSize.label,
      unselectedLabelColor: const Color(0xFF2F2F2F),
      labelColor: const Color(0xFF00AB59),
      labelPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      tabs: [
        Tab(
          child: Text("Produces",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              )),
        ),
        Tab(
          child: Text("Single items",
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              )),
        ),
      ],
    );
  }
}
