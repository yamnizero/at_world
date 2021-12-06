
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'widget_photo_screen.dart';

class ScreenPhotosGroups extends StatefulWidget {
  const ScreenPhotosGroups({Key key}) : super(key: key);

  @override
  State<ScreenPhotosGroups> createState() => _ScreenPhotosGroupsState();
}

class _ScreenPhotosGroupsState extends State<ScreenPhotosGroups> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:AppBatPhoto(context),
        body: TabBarView(
          children: [
            Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Icon(Icons.search,size: 100,),
                Text('No Photos have been found')
              ],
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search,size: 100,),
                Text('No Photos have been found')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
