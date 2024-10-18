import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/Tabs/Storetabs/all.dart';
import 'package:project_1/Tabs/Storetabs/items.dart';
import 'package:project_1/Tabs/Storetabs/produces.dart';
import 'package:project_1/UI/confirmation.dart';
import 'package:project_1/constant/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  width: getWidth(context),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF9B233),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(19),
                      bottomRight: Radius.circular(19),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: ListTile(
                          leading: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Image.asset(
                              "asset/icons/backarrow.png",
                              width: 24,
                              height: 24,
                            ),
                          ),
                          title: text("Walli Vendor Store", 20, Colors.white,
                              FontWeight.w600),
                          subtitle: text("Main Street Downtown", 12,
                              Colors.white, FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: isPortrait ? height * 0.01 : height * 0.1,
                          left: 22,
                          right: 22,
                        ),
                        child: TabBar(
                          controller: _tabController,
                          unselectedLabelColor: Colors.white,
                          dividerColor: Colors.transparent,
                          labelColor: const Color(0xFF00AB59),
                          indicator: CircularTabIndicator(
                              color: const Color(0xFF00AB59), radius: 6),
                          tabs: _buildTabs(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14),
          child: Stack(clipBehavior: Clip.none, children: [
            TabBarView(
              controller: _tabController,
              children: const [All(), Produces(), Items()],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Confirmation()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: IntrinsicHeight(
                    child: Container(
                        padding: EdgeInsets.only(
                            top: 15, bottom: 14, left: 20, right: 19),
                        width: getWidth(context),
                        decoration: BoxDecoration(
                          color: Color(0xFF00AB59),
                          borderRadius: BorderRadius.circular(19),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text("Shopping Bag", 15, Colors.white,
                                    FontWeight.w500),
                                2.widthBox,
                                text("2 Items", 15, Colors.white,
                                    FontWeight.w500),
                              ],
                            ),
                            text("\$17.54", 15, Colors.white, FontWeight.w600),
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  List<Widget> _buildTabs() => [
        for (var tabName in ["All", "Produces", "Items"])
          Tab(
              child: Text(tabName,
                  style: GoogleFonts.montserrat(
                      fontSize: 13, fontWeight: FontWeight.w600))),
      ];
}

class CircularTabIndicator extends Decoration {
  final Color color;
  final double radius;
  const CircularTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) =>
      _CircularPainter(this);
}

class _CircularPainter extends BoxPainter {
  final CircularTabIndicator decoration;
  _CircularPainter(this.decoration);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration config) {
    final paint = Paint()..color = decoration.color;
    final circleOffset = Offset(
      offset.dx + config.size!.width / 2,
      config.size!.height - decoration.radius * 0.1,
    );
    canvas.drawCircle(circleOffset, decoration.radius, paint);
  }
}
