
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/feed/feed_seeting_groups.dart';
import 'package:flutter/material.dart';

class PageNewsFeed extends StatefulWidget {
  const PageNewsFeed({Key? key}) : super(key: key);

  @override
  _PageNewsFeedState createState() => _PageNewsFeedState();
}

class _PageNewsFeedState extends State<PageNewsFeed> {
  @override
  Widget build(BuildContext context) {
    return FeedSettingGroups();
  }
}
