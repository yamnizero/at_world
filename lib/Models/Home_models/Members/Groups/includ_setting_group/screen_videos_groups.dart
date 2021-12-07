


import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/widget_videos_screen.dart';
import 'package:flutter/material.dart';

class ScreenVideosGroups extends StatelessWidget {
  const ScreenVideosGroups({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBatVideos(context),
         body: Center(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.search,size: 100,),
               Text('No Photos have been found')
             ],
           ),
         ),
    );
  }
}
