import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  List<String> category = [
    'All',
    'Account',
    'Hashtag',
    'Caption',
    'Story',
    'Comment'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Search Bar
            SliverToBoxAdapter(child: serachBar()),

            // Category List
            SliverToBoxAdapter(child: categoryList()),

            _slivergrid()
          ],
        ),
      ),
    );
  }

  Widget categoryList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
      child: Container(
        height: 30,
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: ListView.builder(
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xff272B40),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  category[index],
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: 'GM',
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget serachBar() {
    return Container(
      height: 46,
      margin: EdgeInsets.only(top: 13, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Color(0xff272b40),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Image.asset('images/icon_search.png'),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: 'Search user',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Image.asset('images/icon_scan.png'),
          ],
        ),
      ),
    );
  }

  Widget _slivergrid() {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/item$index.png'),
                  ),
                ),
              );
            },
            childCount: 13,
          ),
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: [
              QuiltedGridTile(2, 1),
              QuiltedGridTile(2, 2),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
            ],
          )),
    );
  }
}
