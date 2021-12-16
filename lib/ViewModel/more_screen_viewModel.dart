

import 'package:at_world/Models/More_models/widget_screen_learnDashModels.dart';
import 'package:at_world/Models/More_models/widget_screen_moreModels.dart';
import 'package:at_world/Models/More_models/widget_screen_samplePageModels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoreScreenViewModel{
   late List<WidgetCommunityModel> moreCommunity;
   late List<WidgetLearnDashModel> moreLearDash;
   late List<WidgetSamplePageModel> moreSamplePage;

  MoreScreenViewModel(){
    setWidgetCommunityModel();
    setWidgetLearnDashModel();
    setWidgetSamplePageModel();
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
        num: 1,
      ),
      WidgetCommunityModel(
        title: 'Forums',
        icon: FontAwesomeIcons.commentDots,
        color: Colors.green,
        num: 0,
      ),
      WidgetCommunityModel(
        title: 'Discussions',
        icon: FontAwesomeIcons.commentAlt,
        color: Colors.deepOrange,
        num: 0,
      ),
      WidgetCommunityModel(
        title: 'Documents',
        icon: FontAwesomeIcons.folder,
        color: Colors.indigo,
        num: 0,
      ),
      WidgetCommunityModel(
        title: 'Photos',
        icon: FontAwesomeIcons.image,
        color: Colors.green.shade300,
        num: 0,
      ),
      WidgetCommunityModel(
        title: 'Videos',
        icon: FontAwesomeIcons.video,
        color: Colors.blue,
        num: 0,
      ),
      WidgetCommunityModel(
        title: 'Blog',
        icon: FontAwesomeIcons.solidCommentDots,
        color: Colors.orange,
        num: 0,
      ),
    ];

  }

  void setWidgetLearnDashModel() {
    moreLearDash = [
      WidgetLearnDashModel(
        title: 'Courses',
        icon:  FontAwesomeIcons.award,
        color: Colors.red,
        num: 0,
      ),
      WidgetLearnDashModel(
        title: 'Course Categories',
        icon:  FontAwesomeIcons.fileAlt,
        color: Colors.green,
        num: 0,
      ),
      WidgetLearnDashModel(
        title: 'Course Certificates',
        icon:  FontAwesomeIcons.certificate,
        color: Colors.red,
        num: 0,
      ),
      WidgetLearnDashModel(
        title: 'My Library',
        icon:  FontAwesomeIcons.book,
        color: Colors.deepPurple,
        num: 0,
      ),


    ];
  }

  void setWidgetSamplePageModel() {
    moreSamplePage = [
      WidgetSamplePageModel(
        title: 'Privacy Policy',
        icon:  FontAwesomeIcons.fileAlt,
        color: Colors.blue,
        num: 0,
      ),
      WidgetSamplePageModel(
        title: 'Terms of Service',
        icon:  FontAwesomeIcons.fileAlt,
        color: Colors.green,
        num: 0,
      ),
      WidgetSamplePageModel(
        title: 'Web Page',
        icon:  FontAwesomeIcons.firefoxBrowser,
        color: Colors.red,
        num: 0,
      ),
    ];
  }
}