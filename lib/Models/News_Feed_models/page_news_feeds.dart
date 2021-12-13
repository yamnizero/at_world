
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/feed/create_post_group.dart';

import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/feed/widget_feed_setting_group.dart';
import 'package:flutter/material.dart';



class PageNewsFeed extends StatefulWidget {
  const PageNewsFeed({Key? key}) : super(key: key);

  @override
  _PageNewsFeedState createState() => _PageNewsFeedState();
}

class _PageNewsFeedState extends State<PageNewsFeed> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          elevation: 5.0,
          leading:  Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,),
          title: Text('Feed',style: TextStyle(color: Colors.black,fontSize: 18),),
          centerTitle: true,
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
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(Icons.edit,size: 22,color: Colors.black,)),
              ),
            ),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(120),
              child:Column(
                children: [
                  Padding(
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
                  ),
                 Divider(),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TabBar(
                       unselectedLabelColor: Colors.redAccent,
                       isScrollable: true,
                       indicatorSize: TabBarIndicatorSize.tab,
                       indicator: BoxDecoration(
                           gradient: LinearGradient(
                               colors: [Colors.redAccent, Colors.orangeAccent]),
                           borderRadius: BorderRadius.circular(50),
                           color: Colors.redAccent),
                       tabs: [
                         Tab(
                           child: Align(
                             alignment: Alignment.center,
                             child: Text("All Updates"),
                           ),
                         ),
                         Tab(
                           child: Align(
                             alignment: Alignment.center,
                             child: Text("Likes"),
                           ),
                         ),
                         Tab(
                           child: Align(
                             alignment: Alignment.center,
                             child: Text("Connection"),
                           ),
                         ),
                         Tab(
                           child: Align(
                             alignment: Alignment.center,
                             child: Text("Groups"),
                           ),
                         ),
                         Tab(
                           child: Align(
                             alignment: Alignment.center,
                             child: Text("Mentions"),
                           ),
                         ),
                         Tab(
                           child: Align(
                             alignment: Alignment.center,
                             child: Text("Following"),
                           ),
                         ),
                       ]
                   ),
                 ),
                ],
              )
          ),

        ),
        body: TabBarView(
         children: [
           SingleChildScrollView(child: WidgetFeedSettingGroup()),
           buildPage('Likes'),
           buildPage('Connection'),
           buildPage('Groups'),
           buildPage('Mentions'),
           buildPage('Following'),

         ],
      ),
    ),
    );
  }

 Widget  buildPage(String text) => Center(
   child: Text(
     text,
     style: TextStyle(fontSize: 28),
   ),
 );
}
