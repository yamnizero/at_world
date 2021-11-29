import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

class UserFormForums extends StatelessWidget {
  final UserFormForumsModel userFormForumsModel;
  final void Function() onTap;

  const UserFormForums(this.userFormForumsModel, {Key key, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          //here want button => make profile page ------**
          CircleAvatar(
            radius: 23.0,
            backgroundImage: AssetImage(userFormForumsModel.imageUrl),
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
                  userFormForumsModel.title,
                  style: titleForums,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(userFormForumsModel.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: postForums),
                SizedBox(
                  height: 5,
                ),
                Text(
                  userFormForumsModel.time,
                  style: timeText,
                ),
                Divider(color: Colors.grey.withOpacity(0.5),thickness: 0.9,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserFormForumsModel {
  String title;
  String description;
  String imageUrl;
  String time;

  UserFormForumsModel(
      {@required this.title,
      @required this.description,
      @required this.imageUrl,
      @required this.time});
}
