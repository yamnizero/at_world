

import 'package:at_world/modules/groups/groups_screen.dart';
import 'package:at_world/modules/home/home_screen.dart';
import 'package:at_world/modules/members/members_screen.dart';
import 'package:at_world/modules/more/more_screen.dart';
import 'package:at_world/modules/new_feed/new_feed_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key key}) : super(key: key);

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
    'New Feeds',
    'Members',
    'Groups',
    'More',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: .0,
        title: Center(
          child: Image.asset(
            'assets/images/atworld.png',
            height: 32,
          ),
        ),
      ),

      body:  screen[currentIndex],
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
              Icons.home_outlined,
            ),
            label: 'Home'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Icons.assistant_navigation
            ),
            label: 'New Feed'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Icons.people
            ),
            label: 'Members'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Icons.group
            ),
            label: 'Groups'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Icons.more
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


