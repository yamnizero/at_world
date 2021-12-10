

import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

class ListButtonPageGroupsModel{
  String? title;
  IconData? icon;
  String? num;


  ListButtonPageGroupsModel({required this.title,required this.icon,required this.num});
}


class ListButtonPageGroups extends StatelessWidget {
  final void Function()? onTap;
  final ListButtonPageGroupsModel listButtonPageGroupsModel;
  const ListButtonPageGroups(this.listButtonPageGroupsModel,{Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
             onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(listButtonPageGroupsModel.icon,size: 25.0,),
                        SizedBox(width: 15,),
                        Center(child: Text(listButtonPageGroupsModel.title!,style: SettingListTile)),
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.lightBlue.withOpacity(0.4),
                          child: Center(child: Text(listButtonPageGroupsModel.num!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
                        ),
                        SizedBox(width: 5,),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15.0,
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
