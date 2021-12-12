

import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';


class ListBottomManageModel{
  String? title;
  IconData? icon;



  ListBottomManageModel({required this.title,required this.icon});
}

class WidgetListBottomManage extends StatelessWidget {

  final void Function()? onTap;
  final ListBottomManageModel listBottomManageModel;
  const WidgetListBottomManage(this.listBottomManageModel,{Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
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
                        Icon(listBottomManageModel.icon,size: 25.0,),
                        SizedBox(width: 15,),
                        Center(child: Text(listBottomManageModel.title!,style: SettingListTile)),
                      ],
                    ),
                    Row(
                      children: [
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
            Divider(height: 10,thickness: 1,),
          ],
        ),
      ),
    );
  }
}
