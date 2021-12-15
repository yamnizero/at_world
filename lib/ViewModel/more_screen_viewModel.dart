

import 'package:at_world/Models/More_models/widget_screen_moreModels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoreScreenViewModel{
  late List<WidgetCommunityModel> moreCommunity;

  MoreScreenViewModel(){
    setWidgetCommunityModel();
  }

  void setWidgetCommunityModel() {
    moreCommunity = [
      WidgetCommunityModel(
        title: 'Notifications',
        icon:  FontAwesomeIcons.bell,
        color: Colors.indigo,
        num: 8,
      ),
      WidgetCommunityModel(
        title: 'Messages',
        icon: FontAwesomeIcons.envelope,
        color: Colors.blue,
        num: 3,
      ),
      WidgetCommunityModel(
        title: 'Forums',
        icon: FontAwesomeIcons.commentDots,
        color: Colors.green,
      ),
      WidgetCommunityModel(
        title: 'Discussions',
        icon: FontAwesomeIcons.commentAlt,
        color: Colors.deepOrange,
      ),
    ];

  }
}