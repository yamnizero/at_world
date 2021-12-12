

import 'package:at_world/view/groups/groups_screen.dart';
import 'package:at_world/view/home/home_screen.dart';
import 'package:at_world/view/members/members_screen.dart';
import 'package:at_world/view/more/more_screen.dart';
import 'package:at_world/view/new_feed/new_feed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

  int currentIndex = 0;

  List<Widget> screen =
  [
    HomeScreen(),
    NewFeedScreen(),
    MembersScreen(),
    GroupScreen(),
    MoreScreen(),
  ];

  List<String> titles =
  [
    'Home',
    'News Feed',
    'Members',
    'Groups',
    'More',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      // CustomScrollView(
      //   slivers: [
      //      SliverAppBar(
      //
      //       backgroundColor: Colors.white,
      //       expandedHeight: 100,
      //       floating: true,
      //       pinned: true,
      //       flexibleSpace: FlexibleSpaceBar(
      //         title: Text(titles[currentIndex],style: TextStyle(color: black),),
      //       ),
      //     ),
      //     SliverFillRemaining(
      //         child: screen[currentIndex]
      //     )
      //   ],
      //
      //
      // ),
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index)
      {
        setState(() {
          currentIndex = index;

        });
      },
      items:
      [
        BottomNavigationBarItem(
            icon: Icon(
              MaterialIcons.home,
            ),
            label: 'Home'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Ionicons.ios_logo_electron

            ),
            label: 'News Feed'
        ),
        BottomNavigationBarItem(
            icon: Icon(
              MaterialIcons.category,
            ),
            label: 'Members'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Ionicons.ios_library_outline
            ),
            label: 'Groups'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                MaterialIcons.more
            ),
            label: 'more'
        ),
      ],
    ),

    );
      // CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       expandedHeight: 25,
      //       floating: true,
      //       pinned: true,
      //       backgroundColor: Colors.white70,
      //       title: Text(titles[currentIndex],style: TextStyle(
      //           fontSize: 20,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.black
      //       ),
      //       ),
      //     ),
      //     SliverFillRemaining(
      //       child:  screen[currentIndex]),
      //   ],
      //     ),

  }

}


