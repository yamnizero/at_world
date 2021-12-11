
import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';


class WidgetScreenDiscussionModel {
  String titleDiscussion;
  String numMemDis;
  String numReplies;
  String time;
  String imageDis;

  WidgetScreenDiscussionModel(
      {
        required this.titleDiscussion,
        required this.numMemDis,
        required this.numReplies,
        required this.time,
        required this.imageDis,
      });
}


class WidgetScreenDiscussion extends StatefulWidget {
       final WidgetScreenDiscussionModel widgetScreenDiscussionModel;
       final void Function()? onTap;
  const WidgetScreenDiscussion(this.widgetScreenDiscussionModel,{Key? key,this.onTap}) : super(key: key);

  @override
  _WidgetScreenDiscussionState createState() => _WidgetScreenDiscussionState();
}

class _WidgetScreenDiscussionState extends State<WidgetScreenDiscussion> {
   WidgetScreenDiscussionModel? widgetScreenDiscussionModel;
   late HomeScreenViewModel viewModel;

   void initState() {
     viewModel = HomeScreenViewModel();
     widgetScreenDiscussionModel =WidgetScreenDiscussionModel(
       titleDiscussion: 'Cyber Security for Beginners',
       numMemDis: '2',
       numReplies: '2',
       time: '2',
       imageDis: 'assets/images/me3.png',
     );
     // TODO: implement initState
     super.initState();
   }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){},
      child: Row(
        children: [
          CircleAvatar(
            radius: 23.0,
            backgroundImage: AssetImage(widgetScreenDiscussionModel!.imageDis),
          ),
          SizedBox(
            width: 15,
          ),
          //here want button => make posts page ------**
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widgetScreenDiscussionModel!.titleDiscussion,
                  style: titleForums,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text('${widgetScreenDiscussionModel!.numMemDis} Members',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: postForums
                    ),
                    Text('${widgetScreenDiscussionModel!.numReplies} Replies',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: postForums
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Last reply  ${widgetScreenDiscussionModel!.time} years ago',
                  style: timeText,
                ),
                Divider(color: Colors.grey.withOpacity(0.5),thickness: 0.9,),
              ],
            ),
          ),
          Icon(MaterialIcons.more_horiz,size: 18,color: Colors.white,),
        ],
      ),
    );
  }
}
