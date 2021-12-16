
import 'package:at_world/Models/More_models/widget_screen_learnDashModels.dart';
import 'package:at_world/Models/More_models/widget_screen_moreModels.dart';
import 'package:at_world/Models/More_models/widget_screen_samplePageModels.dart';
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
  late WidgetSamplePageModel widgetSamplePageModel;
  late WidgetLearnDashModel widgetLearnDashModel;
  late final MoreScreenViewModel viewModelCommunity;

  @override
  void initState() {
    viewModelCommunity = MoreScreenViewModel();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 3.0,
        title: Text(
          'More',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.white),
              ),
            )),
      ),
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    'assets/images/me3.png',
                  ),
                ),
                title: Text('Mohammed'),
                subtitle: Text('@yamni'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'APP SETTINGS',
            style: TextStyle(fontSize: 18.0, color: Colors.black26),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: ListTile(
              leading: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.cog,
                      ))),
              title: Text('Settings'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'COMMUNITY',
            style: TextStyle(fontSize: 18.0, color: Colors.black26),
          ),
          GestureDetector(
            onTap:(){} ,
            child: Card(
              elevation: 0.0,
              child: Container(
                width: double.infinity,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: viewModelCommunity.moreCommunity.length,
                  itemBuilder: (context, index) => WidgetCommunity(
                      viewModelCommunity.moreCommunity[index],onTap: (){},
                  ),
                  separatorBuilder: (context, index) {
                    return Divider();
                  },

                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'LEARNDASH',
            style: TextStyle(fontSize: 18.0, color: Colors.black26),
          ),
          GestureDetector(
            onTap:(){} ,
            child: Card(
              elevation: 0.0,
              child: Container(
                width: double.infinity,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: viewModelCommunity.moreLearDash.length,
                  itemBuilder: (context, index) => WidgetLearnDash(
                    viewModelCommunity.moreLearDash[index],onTap: (){},
                  ),
                  separatorBuilder: (context, index) {
                    return Divider();
                  },

                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'IN-APP PURCHASES',
            style: TextStyle(fontSize: 18.0, color: Colors.black26),
          ),
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: ListTile(
              leading: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.box,color: Colors.white,
                      ))),
              title: Text('Products'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'SAMPLE PAGES',
            style: TextStyle(fontSize: 18.0, color: Colors.black26),
          ),
          GestureDetector(
            onTap:(){} ,
            child: Card(
              elevation: 0.0,
              child: Container(
                width: double.infinity,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: viewModelCommunity.moreSamplePage.length,
                  itemBuilder: (context, index) => WidgetSamplePage(
                    viewModelCommunity.moreSamplePage[index],onTap: (){},
                  ),
                  separatorBuilder: (context, index) {
                    return Divider();
                  },

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}