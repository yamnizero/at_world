import 'package:flutter/material.dart';




class GroupsModel{
  String title;
  String type;
  String imageUrl;
  GroupsModel(
      {
        @required this.title,
        @required this.type,
        @required this.imageUrl
      }
  );
}





class Groups extends StatelessWidget {
  final GroupsModel groupsModel;
  final void Function() onTap;
  const Groups(this.groupsModel,{Key key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
              elevation: 6.0,
              color: Colors.black,
              child: Image.asset(
                groupsModel.imageUrl,
                fit: BoxFit.fill,
                height: 100,
                width: 180,
              ),
            ),
            Text(
              groupsModel.title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),
            ),
            SizedBox(height: 5,),
            Text('Public / ${groupsModel.type}'),
          ],
        ),
      ),
    );
  }
}
