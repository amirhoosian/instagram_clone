import 'dart:ui';

import 'package:flutter/material.dart';

class BottomShait extends StatelessWidget {
  const BottomShait({this.contoller, super.key});
  final ScrollController? contoller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 20, sigmaX: 20),
        child: Container(
            color: Color.fromRGBO(255, 255, 255, 0.4),
            height: 120,
            child: _getContent()),
      ),
    );
  }

  Widget _getContent() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomScrollView(
            controller: contoller,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      width: 64,
                      height: 5,
                      margin: EdgeInsets.only(top: 10, bottom: 22),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shere',
                          style: TextStyle(
                              fontFamily: 'GB',
                              fontSize: 22,
                              color: Colors.white),
                        ),
                        Image.asset('images/icon_share_bottomsheet.png')
                      ],
                    ),
                    SizedBox(height: 32),
                    Container(
                      height: 46,
                      margin: EdgeInsets.only(bottom: 13),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.3),
                          borderRadius: BorderRadius.circular(13)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Image.asset('images/icon_search.png'),
                            SizedBox(width: 10),
                            Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText: 'Serch user'),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SliverGrid(
                  delegate: SliverChildBuilderDelegate(childCount: 72,
                      (contex, index) {
                    return _serchUser();
                  }),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 110)),
              SliverPadding(padding: EdgeInsets.only(bottom: 33))
            ],
          ),
        ),
        Positioned(
            bottom: 20,
            child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 5.0),
                  child: Text('Shere'),
                )))
      ],
    );
  }

  Widget _serchUser() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Image.asset('images/profile.png'),
          SizedBox(height: 5),
          Text(textAlign: TextAlign.center, 'User')
        ],
      ),
    );
  }
}
