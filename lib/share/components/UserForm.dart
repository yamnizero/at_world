import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  final UserFormModel userFormModel;
  final void Function() onTap;
  const UserForm(this.userFormModel,{Key key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          //here want button => make profile page ------**
          CircleAvatar(
            radius: 23.0,
            backgroundImage:NetworkImage(
              userFormModel.imageUrl
            ),
          ),
          SizedBox(width: 15,),
          //here want button => make posts page ------**
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userFormModel.title,style: titleForums,),
                SizedBox(height: 5,),
                Text(userFormModel.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: postForums),
                SizedBox(height: 5,),
                Text(userFormModel.time,style: timeText,),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class UserFormModel {
  String title;
  String description;
  String imageUrl;
  String time;
  UserFormModel(
  {@required this.title, @required this.description,@required this.imageUrl,@required this.time
  }
      );
}


