import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/feed/widget_feed_setting_group.dart';
import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:flutter/material.dart';

import '../../../UserFormMembers.dart';
import 'create_post_group.dart';

class FeedSettingGroups extends StatefulWidget {
  const FeedSettingGroups({Key? key}) : super(key: key);


  @override
  State<FeedSettingGroups> createState() => _FeedSettingGroupsState();
}

class _FeedSettingGroupsState extends State<FeedSettingGroups> {
  TextEditingController createPost = TextEditingController();
  // late UserFormMembersModel userFormMembersModel;
  var formKey = GlobalKey<FormState>();

  // late HomeScreenViewModel viewModel;
  // void initState() {
  //   viewModel = HomeScreenViewModel();
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        leading:  Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,),
        title: FlatButton(
          onPressed: ()
          {

          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Feed',style: TextStyle(color: Colors.black,fontSize: 18),),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatePostGroups(),
                  ),
                );
              },
              child: CircleAvatar(
                  radius: 25,
                  child: Icon(Icons.edit,size: 22,color: Colors.black,)),
            ),
          ),
        ],
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child:Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none
                ),
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.white
              ),
            ),
          )
        ),
      ),
      body: SingleChildScrollView(
        child: WidgetFeedSettingGroup(),
      ),
    );
  }

}
