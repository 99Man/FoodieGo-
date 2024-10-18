import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/helper.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              50.heightBox,
              SizedBox(
                width: getWidth(context) * 0.9,
                child: Row(
                  children: [
                    SizedBox(
                      width: 32,
                      height: 32,
                      child: Image.asset('asset/images/tree2.png'),
                    ),
                    4.widthBox,
                    Text(
                      'PICH',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.brown),
                    ),
                    const SizedBox(
                        height: 26,
                        child: VerticalDivider(
                          thickness: 2,
                          color: Color(0xFF9F3227),
                        )),
                    SizedBox(
                      width: 170,
                      child: Text('Partnership to Improve Community Health',
                          maxLines: 2,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.brown)),
                    )
                  ],
                ),
              ),
              10.heightBox,
              Row(
                children: [
                  ClipOval(
                    child: SizedBox(
                      width: 45,
                      height: 45,
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ_NmGXPmk2M4jldoNqGIZgZclPgJyYncutA&s",
                      ),
                    ),
                  ),
                  20.widthBox,
                  Expanded(
                    child: Container(
                        height: 40,
                        // width: getWidth(context) * 0.75,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 14,
                          ),
                          child: text("Share you healthy options", 12,
                              Colors.grey.shade600, FontWeight.w600),
                        )),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _listTile(
                      "https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=1200:*",
                      "Lionel Messi",
                      "12,Sep,24 - 10:00 pm",
                      "Hi, Abdullah",
                      "https://static.euronews.com/articles/stories/08/35/34/16/1200x675_cmsv2_397eddf0-1e7d-5271-b801-571fc21b14c1-8353416.jpg",
                      "123k",
                      "222k"),
                  _listTile(
                      "https://ichef.bbci.co.uk/news/1024/cpsprodpb/4b33/live/12edab40-71c0-11ef-a237-49738a978907.jpg.webp",
                      "Cristiano Ronaldo",
                      "12,Sep,24 - 11:00 pm",
                      "Hi, Abdullah",
                      "https://variety.com/wp-content/uploads/2024/08/GettyImages-2160855156.jpg?w=1000&h=667&crop=1",
                      "123k",
                      "200k"),
                  _listTile(
                      "https://imagenes.eltiempo.com/files/image_1200_600/uploads/2023/04/22/64441ea3bb074.jpeg",
                      "Ana de armes",
                      "13,Sep,24 - 1:00 am",
                      "Hi, Abdullah",
                      "https://www.hollywoodreporter.com/wp-content/uploads/2019/11/ana_de_armas_-_getty_-_h_2019_.jpg?w=1296&h=730&crop=1",
                      "59k",
                      "23k")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _listTile(String imagePath, String title, String subtitle, String msg,
    String imagePostPath, String like, String comment) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipOval(
          child: SizedBox(
            width: 45,
            height: 45,
            child: Image.network(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: text(title, 12, Colors.black87, FontWeight.w500),
        subtitle: text(subtitle, 11, Colors.grey.shade500, FontWeight.w400),
        trailing: Icon(
          Icons.more_horiz_outlined,
          size: 18,
          color: Colors.grey.shade500,
        ),
      ),
      text(msg, 12, Colors.black, FontWeight.w500),
      5.heightBox,
      IntrinsicHeight(
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(19),
            child: Image.network(
              imagePostPath,
            ),
          ),
        ),
      ),
      Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset("asset/icons/like.png"))),
          text(like, 15, Colors.grey, FontWeight.w400),
          IconButton(
              onPressed: () {},
              icon: SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset("asset/icons/comment.png"))),
          text(comment, 15, Colors.grey, FontWeight.w400)
        ],
      ),
      Divider(),
    ],
  );
}
