import 'package:at_world/ViewModel/more_screen_viewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widget_screen_moreModels.dart';

class ScreenMore extends StatefulWidget {
  const ScreenMore({Key? key}) : super(key: key);

  @override
  _ScreenMoreState createState() => _ScreenMoreState();
}

class _ScreenMoreState extends State<ScreenMore> {
    WidgetCommunityModel? widgetCommunityModel;
  late final MoreScreenViewModel viewModelCommunity;

  @override
  void initState() {
    viewModelCommunity = MoreScreenViewModel();
    // widgetCommunityModel =WidgetCommunityModel(
    //   title: 'Notifications',
    //   icon:  FontAwesomeIcons.bell,
    //   color: Colors.indigo,
    //   num: 8,
    // );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    viewModelCommunity.moreCommunity[index]
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
// Card(
//   color: Colors.white,
//   elevation: 0.0,
//   child: Column(
//     children: [
//       ListTile(
//         leading: Container(
//             width: 35,
//             height: 35,
//             decoration: BoxDecoration(
//                 color: Colors.indigo,
//                 borderRadius: BorderRadius.circular(8)),
//             child: Center(
//                 child: FaIcon(
//                   FontAwesomeIcons.bell,
//                   color: Colors.white,
//                 ))),
//         title: Text('Notifications'),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CircleAvatar(
//                 radius: 12.0,
//                 backgroundColor: Colors.blue.shade100,
//                 child: Text('3')),
//             Icon(
//               Icons.arrow_forward_ios,
//               size: 20,
//             ),
//           ],
//         ),
//       ),
//       Divider(),
//       ListTile(
//         leading: Container(
//             width: 35,
//             height: 35,
//             decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(8)),
//             child: Center(
//                 child: FaIcon(
//                   FontAwesomeIcons.envelope,
//                   color: Colors.white,
//                 ))),
//         title: Text('Messages'),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CircleAvatar(
//                 radius: 12.0,
//                 backgroundColor: Colors.blue.shade100,
//                 child: Text('3')),
//             Icon(
//               Icons.arrow_forward_ios,
//               size: 20,
//             ),
//           ],
//         ),
//       ),
//       Divider(),
//       ListTile(
//         leading: Container(
//             width: 35,
//             height: 35,
//             decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(8)),
//             child: Center(
//                 child: FaIcon(
//                   FontAwesomeIcons.envelope,
//                   color: Colors.white,
//                 ))),
//         title: Text('Messages'),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CircleAvatar(
//                 radius: 12.0,
//                 backgroundColor: Colors.blue.shade100,
//                 child: Text('3')),
//             Icon(
//               Icons.arrow_forward_ios,
//               size: 20,
//             ),
//           ],
//         ),
//       ),
//       Divider(),
//       ListTile(
//         leading: Container(
//             width: 35,
//             height: 35,
//             decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(8)),
//             child: Center(
//                 child: FaIcon(
//                   FontAwesomeIcons.envelope,
//                   color: Colors.white,
//                 ))),
//         title: Text('Messages'),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CircleAvatar(
//                 radius: 12.0,
//                 backgroundColor: Colors.blue.shade100,
//                 child: Text('3')),
//             Icon(
//               Icons.arrow_forward_ios,
//               size: 20,
//             ),
//           ],
//         ),
//       ),
//       Divider(),
//       ListTile(
//         leading: Container(
//             width: 35,
//             height: 35,
//             decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(8)),
//             child: Center(
//                 child: FaIcon(
//                   FontAwesomeIcons.envelope,
//                   color: Colors.white,
//                 ))),
//         title: Text('Messages'),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CircleAvatar(
//                 radius: 12.0,
//                 backgroundColor: Colors.blue.shade100,
//                 child: Text('3')),
//             Icon(
//               Icons.arrow_forward_ios,
//               size: 20,
//             ),
//           ],
//         ),
//       ),
//       Divider(),
//       ListTile(
//         leading: Container(
//             width: 35,
//             height: 35,
//             decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(8)),
//             child: Center(
//                 child: FaIcon(
//                   FontAwesomeIcons.envelope,
//                   color: Colors.white,
//                 ))),
//         title: Text('Messages'),
//         trailing: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             CircleAvatar(
//                 radius: 12.0,
//                 backgroundColor: Colors.blue.shade100,
//                 child: Text('3')),
//             Icon(
//               Icons.arrow_forward_ios,
//               size: 20,
//             ),
//           ],
//         ),
//       ),
//
//     ],
//   ),
// )