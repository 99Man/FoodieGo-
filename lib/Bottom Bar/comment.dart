import 'package:flutter/material.dart';
import 'package:project_1/constant/helper.dart';
import 'package:velocity_x/velocity_x.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.heightBox,
            text("Conversations", 22, Colors.black, FontWeight.w700),
            30.heightBox,
            list(
                "https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=1200:*",
                "Lionel Messi",
                "Hi, Abdullah"),
            Divider(),
            list(
                "https://ichef.bbci.co.uk/news/1024/cpsprodpb/4b33/live/12edab40-71c0-11ef-a237-49738a978907.jpg.webp",
                "Cristiano Ronaldo",
                "Hi, Abdullah"),
            Divider(),
            list(
                "https://imagenes.eltiempo.com/files/image_1200_600/uploads/2023/04/22/64441ea3bb074.jpeg",
                "Ana de armes",
                "Hi, Abdullah babe")
          ],
        ),
      ),
    );
  }
}

Widget list(String imagePath, String title, String subtitle) {
  return ListTile(
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
    title: text(title, 15, Colors.black, FontWeight.w400),
    subtitle: text(subtitle, 10, Colors.grey, FontWeight.w400),
  );
}
