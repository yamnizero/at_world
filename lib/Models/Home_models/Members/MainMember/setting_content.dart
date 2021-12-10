

import 'package:at_world/Models/Home_models/Members/Connection/connection_member.dart';
import 'package:at_world/Models/Home_models/Members/Groups/groups_member.dart';
import 'package:at_world/Models/Home_models/Members/profi_member/profile_screen.dart';
import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:flutter/material.dart';


import '../Timeline/timeline.dart';
import '../UserFormMembers.dart';




class SettingContentModel{
  String? title;
  IconData? icon;
  String? num;


  SettingContentModel({required this.title,required this.icon,required this.num});
}

class SettingContent extends StatelessWidget {

   final void Function()? onTap;
    final SettingContentModel settingContentModel;


  const SettingContent(this.settingContentModel,{Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
          decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.circular(25)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap:onTap,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(settingContentModel.icon),
                            SizedBox(width: 15,),
                            Center(child: Text(settingContentModel.title!,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.lightBlue.withOpacity(0.4),
                              child: Center(child: Text(settingContentModel.num!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
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
