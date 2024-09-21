import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class HomePageScreenPage extends StatelessWidget {
  const HomePageScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
              width: 128,
              height: 16,
              child: Image.asset('images/moodinger_logo.png')),
          actions: [
            Container(
              width: 24,
              height: 24,
              margin: EdgeInsets.only(right: 18),
              child: Image.asset('images/icon_direct.png'),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [SizedBox(height: 24), showStory(), showPost()],
          ),
        ));
  }

  Widget showPost() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          child: Row(
            children: [
              DottedBorder(
                dashPattern: [8, 4],
                strokeWidth: 2,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 2, color: Colors.white)),
                  height: 44,
                  width: 44,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Image.asset('images/profile.png'),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Amir ahmad adibie',
                    style: TextStyle(fontFamily: 'GB', color: Colors.white),
                  ),
                  Text(
                    'امیر احمد ادیبی برنامه نویس موبایل',
                    style: TextStyle(fontFamily: 'Sm', color: Colors.white),
                  )
                ],
              ),
              Spacer(),
              Image.asset('images/icon_menu.png')
            ],
          ),
        ),
        Container(
          width: 394,
          height: 440,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                top: 0,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('images/post_cover.png')),
              ),
              Positioned(
                  right: 15,
                  top: 10,
                  child: Image.asset('images/icon_video.png')),
              Positioned(
                bottom: 18,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: 340,
                      height: 46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 0.5),
                                Color.fromRGBO(255, 255, 255, 0.2)
                              ])),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 11.0),
                        child: Row(
                          children: [
                            SizedBox(width: 8),
                            Image.asset('images/icon_hart.png'),
                            SizedBox(width: 75),
                            Image.asset('images/icon_comments.png'),
                            SizedBox(width: 80),
                            Image.asset('images/icon_share.png'),
                            SizedBox(width: 54),
                            Image.asset('images/icon_tab_bookmark.png'),
                            SizedBox(width: 5)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget showStory() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: Border.all(width: 2, color: Colors.white)),
          child: Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(color: Colors.transparent),
            child: Image.asset('images/icon_plus.png'),
          ),
        )
      ]),
    );
  }
}
