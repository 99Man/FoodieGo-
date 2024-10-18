import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/Tabs/Profile/orders.dart';
import 'package:project_1/Tabs/vouchers.dart';

import '../Tabs/Profile/postSection.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children: [
              NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Profile",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: isPortrait ? 20 : 20)),
                            IconButton(
                              onPressed: () {},
                              icon: SizedBox(
                                width: isPortrait ? 21 : 21,
                                height: isPortrait ? 23 : 23,
                                child: Image.asset("asset/icons/Vector.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          const SizedBox(height: 70),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF00AB59),
                                    borderRadius: BorderRadius.circular(19),
                                  ),
                                  height: isPortrait
                                      ? height * 0.151
                                      : height * 0.34,
                                  width: width,
                                ),
                                Positioned(
                                  top: isPortrait ? -45 : -45,
                                  left: 0,
                                  right: 0,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: ClipOval(
                                      child: Image.network(
                                        "https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=1200:*",
                                        width: isPortrait
                                            ? width * 0.22
                                            : width * 0.11,
                                        height: isPortrait
                                            ? height * 0.1
                                            : height * 0.25,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Positioned(
                                  top: isPortrait
                                      ? height * 0.053
                                      : height * 0.14,
                                  left: 0,
                                  right: 0,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Jessica Melinda",
                                      style: GoogleFonts.montserrat(
                                        fontSize: isPortrait ? 15 : 18,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Positioned(
                                  top: isPortrait
                                      ? height * 0.07
                                      : height * 0.19,
                                  left: isPortrait
                                      ? width - (width / 1.5)
                                      : width / 2.38,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 7.24,
                                        height: 9.63,
                                        child: Image.asset(
                                            'asset/icons/location.png'),
                                      ),
                                      const SizedBox(width: 2.76),
                                      Text(
                                        "Los Angeles",
                                        style: GoogleFonts.montserrat(
                                          fontSize: isPortrait ? 12 : 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: isPortrait
                                      ? EdgeInsets.only(
                                          top: height * 0.0972,
                                          left: 22,
                                          right: 22)
                                      : EdgeInsets.only(top: height * 0.218),
                                  child: TabBar(
                                    controller: _tabController,
                                    unselectedLabelColor:
                                        const Color(0xFFFFFFFF),
                                    labelColor: const Color(0xFFF9B233),
                                    dividerColor: Colors.transparent,
                                    indicator: CircularTabIndicator(
                                      color: const Color(0xFFF9B233),
                                      radius: 6,
                                      verticalOffset:
                                          isPortrait ? height * 0 : height * 0,
                                    ),
                                    tabs: [
                                      Tab(
                                        child: Text(
                                          "Posts",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          "Vouchers",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Tab(
                                        child: Text(
                                          "Orders",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ];
                },
                body: SizedBox(
                  height: 400,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      SingleChildScrollView(child: Postsection()),
                      Vouchers(),
                      Orders(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularTabIndicator extends Decoration {
  final Color color;
  final double radius;
  final double verticalOffset;

  const CircularTabIndicator({
    required this.color,
    required this.radius,
    this.verticalOffset = 0.0,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CircularPainter(this, onChanged);
  }
}

class _CircularPainter extends BoxPainter {
  final CircularTabIndicator decoration;

  _CircularPainter(this.decoration, VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint()
      ..color = decoration.color
      ..style = PaintingStyle.fill
      ..strokeWidth = 3;

    final Offset circleOffset = Offset(
      offset.dx + configuration.size!.width / 2,
      configuration.size!.height -
          decoration.radius * 0.5 +
          decoration.verticalOffset,
    );

    canvas.drawCircle(circleOffset, decoration.radius, paint);
  }
}
