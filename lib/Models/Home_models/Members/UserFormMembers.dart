import 'package:flutter/material.dart';



class UserFormMembersModel {
  String? imageUrl;
  String? nameMem;
  String? nickName;
  UserFormMembersModel({@required this.imageUrl,@required this.nameMem,@required this.nickName});
}


class UserFormMembers extends StatelessWidget {
  final UserFormMembersModel userFormMembersModel;
  final void Function()? onTap;
  const UserFormMembers(this.userFormMembersModel,{Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage:AssetImage(userFormMembersModel.imageUrl!),
              ),
              CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    bottom: 3.0,
                    end: 3.0
                ),
                child: CircleAvatar(
                  radius: 7.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



