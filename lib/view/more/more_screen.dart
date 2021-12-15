import 'package:at_world/Models/More_models/screen_more_models.dart';
import 'package:at_world/Models/More_models/widget_screen_moreModels.dart';
import 'package:at_world/ViewModel/more_screen_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  late WidgetCommunityModel widgetCommunityModel;
  late final MoreScreenViewModel viewModelCommunity;

  @override
  void initState() {
    viewModelCommunity = MoreScreenViewModel();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ScreenMore();
  }
}