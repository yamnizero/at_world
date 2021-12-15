

import 'package:at_world/ViewModel/more_screen_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class WidgetCommunityModel{
  String title;
  IconData icon;
  int? num;
  Color color;

  WidgetCommunityModel({
      required this.title,
      required this.icon,
      this.num,
      required this.color,
  });
}



class WidgetCommunity extends StatefulWidget {
  final WidgetCommunityModel widgetCommunityModel;

  final void Function()? onTap;
  const WidgetCommunity(this.widgetCommunityModel,{Key? key,this.onTap}) : super(key: key);

  @override
  State<WidgetCommunity> createState() => _WidgetCommunityState();
}

class _WidgetCommunityState extends State<WidgetCommunity> {
   WidgetCommunityModel? widgetCommunityModel;
   late final MoreScreenViewModel viewModelCommunity;

   @override
  void initState() {
     viewModelCommunity = MoreScreenViewModel();
     widgetCommunityModel =WidgetCommunityModel(
       title: 'Notifications',
       icon:  FontAwesomeIcons.bell,
       color: Colors.indigo,
       num:5,
     );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return  Card(
              color: Colors.white,
              elevation: 0.0,
              child: ListTile(
                leading: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: widgetCommunityModel!.color,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                        child: FaIcon(
                          widgetCommunityModel!.icon,
                          color: Colors.white,
                        ))),
                title: Text(widgetCommunityModel!.title),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   (widgetCommunityModel!.num! > 0) ? CircleAvatar(
                        radius: 12.0,
                        backgroundColor: Colors.blue.shade100,
                        child: Text(
                            widgetCommunityModel!.num.toString(),
                        ),
                    ) : Text('',),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
              ),
            );

  }
}

// ListTile(
//   leading: Container(
//       width: 35,
//       height: 35,
//       decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(8)),
//       child: Center(
//           child: FaIcon(
//             FontAwesomeIcons.envelope,
//             color: Colors.white,
//           ))),
//   title: Text('Messages'),
//   trailing: Row(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       CircleAvatar(
//           radius: 12.0,
//           backgroundColor: Colors.blue.shade100,
//           child: Text('3')),
//       Icon(
//         Icons.arrow_forward_ios,
//         size: 20,
//       ),
//     ],
//   ),
// ),
// Divider(),
// ListTile(
//   leading: Container(
//       width: 35,
//       height: 35,
//       decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(8)),
//       child: Center(
//           child: FaIcon(
//             FontAwesomeIcons.envelope,
//             color: Colors.white,
//           ))),
//   title: Text('Messages'),
//   trailing: Row(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       CircleAvatar(
//           radius: 12.0,
//           backgroundColor: Colors.blue.shade100,
//           child: Text('3')),
//       Icon(
//         Icons.arrow_forward_ios,
//         size: 20,
//       ),
//     ],
//   ),
// ),
// Divider(),
// ListTile(
//   leading: Container(
//       width: 35,
//       height: 35,
//       decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(8)),
//       child: Center(
//           child: FaIcon(
//             FontAwesomeIcons.envelope,
//             color: Colors.white,
//           ))),
//   title: Text('Messages'),
//   trailing: Row(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       CircleAvatar(
//           radius: 12.0,
//           backgroundColor: Colors.blue.shade100,
//           child: Text('3')),
//       Icon(
//         Icons.arrow_forward_ios,
//         size: 20,
//       ),
//     ],
//   ),
// ),
// Divider(),
// ListTile(
//   leading: Container(
//       width: 35,
//       height: 35,
//       decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(8)),
//       child: Center(
//           child: FaIcon(
//             FontAwesomeIcons.envelope,
//             color: Colors.white,
//           ))),
//   title: Text('Messages'),
//   trailing: Row(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       CircleAvatar(
//           radius: 12.0,
//           backgroundColor: Colors.blue.shade100,
//           child: Text('3')),
//       Icon(
//         Icons.arrow_forward_ios,
//         size: 20,
//       ),
//     ],
//   ),
// ),
// Divider(),
// ListTile(
//   leading: Container(
//       width: 35,
//       height: 35,
//       decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(8)),
//       child: Center(
//           child: FaIcon(
//             FontAwesomeIcons.envelope,
//             color: Colors.white,
//           ))),
//   title: Text('Messages'),
//   trailing: Row(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       CircleAvatar(
//           radius: 12.0,
//           backgroundColor: Colors.blue.shade100,
//           child: Text('3')),
//       Icon(
//         Icons.arrow_forward_ios,
//         size: 20,
//       ),
//     ],
//   ),
// ),