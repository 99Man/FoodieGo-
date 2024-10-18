import 'package:flutter/material.dart';
import 'package:project_1/constant/Widgets/posts.dart';

class Postsection extends StatelessWidget {
  const Postsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Positioned(
        child: Container(
          child: const Column(
            children: [
              Posts(
                name: "Lionel Messi",
                date: "12 jan 2022",
                profileImageUrl:
                    "https://wallpapers.com/images/high/messi-pictures-i2xo8wseuoa6l08n.webp",
                postImageUrl:
                    'https://wallpapers.com/images/high/messi-2021-dismayed-expression-3saw6o5fcd7v9ntd.webp',
              ),
              Posts(
                name: "Lionel Messi",
                date: "12 jan 2022",
                profileImageUrl:
                    "https://wallpapers.com/images/high/messi-pictures-i2xo8wseuoa6l08n.webp",
                postImageUrl:
                    'https://c4.wallpaperflare.com/wallpaper/472/228/2/lionel-messi-fifa-world-cup-2022-football-trophy-argentina-hd-wallpaper-preview.jpg',
              ),
              SizedBox(
                height: 130,
              )
            ],
          ),
        ),
      ),
    );
  }
}
