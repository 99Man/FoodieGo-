import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/constant/helper.dart';

class Posts extends StatelessWidget {
  final String profileImageUrl;
  final String name;
  final String date;
  final String postImageUrl;

  const Posts(
      {super.key,
      required this.profileImageUrl,
      required this.name,
      required this.date,
      required this.postImageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          ListTile(
            leading: SizedBox(
              width: 35,
              height: 35,
              child: ClipOval(
                child: Image.network(
                  profileImageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              name,
              style: GoogleFonts.montserrat(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000)),
            ),
            subtitle: Text(
              date,
              style: GoogleFonts.montserrat(
                  color: Color(0xFFC8C8C8),
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
            trailing: SizedBox(
                width: 20,
                height: 4,
                child: Image.asset('asset/icons/options.png')),
          ),
          Container(
            width: getWidth(context),
            height: 314,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(19),
              child: Image.network(
                postImageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: SizedBox(
                      width: 21.71,
                      height: 19.08,
                      child: Image.asset(
                        "asset/icons/like.png",
                        color: Color(0xFFAEAEAE),
                      ))),
              Text(
                "143K",
                style: GoogleFonts.montserrat(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFAEAEAE)),
              ),
              IconButton(
                  onPressed: () {},
                  icon: SizedBox(
                      width: 21.71,
                      height: 19.08,
                      child: Image.asset(
                        "asset/icons/comment.png",
                        color: Color(0xFFAEAEAE),
                      ))),
              Text(
                "13K",
                style: GoogleFonts.montserrat(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFAEAEAE)),
              ),
              IconButton(
                  onPressed: () {},
                  icon: SizedBox(
                      width: 21.71,
                      height: 19.08,
                      child: Image.asset(
                        "asset/icons/share.png",
                        color: Color(0xFFAEAEAE),
                      ))),
            ],
          )
        ],
      ),
    );
  }
}
