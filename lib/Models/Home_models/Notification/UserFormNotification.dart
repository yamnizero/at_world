


import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

class UserFormNotificationsModel
{
  String? title;
  String? time;
  String? imageUrl;

  UserFormNotificationsModel({
    @required this.title,
    @required this.time,
    @required this.imageUrl,
  });
}

class UserFormNotifications  extends StatelessWidget {
  final UserFormNotificationsModel userFormNotificationsModel;
  final void Function()? onTap;
  const UserFormNotifications(this.userFormNotificationsModel,{Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          CircleAvatar(
            radius: 23.0,
            backgroundImage: AssetImage(userFormNotificationsModel.imageUrl!),
          ),
          SizedBox(width: 15,),
          //here want button => make posts page ------**
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userFormNotificationsModel.title!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: postText),
                SizedBox(height: 5,),
                Text(userFormNotificationsModel.time!,style: timeText,),
                 Divider(color: Colors.grey.withOpacity(0.5),thickness: 0.9,),
              ],
            ),
          ),

        ],
      ),
    );
  }
}