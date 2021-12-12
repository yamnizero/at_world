

import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';



class ListBottomSettingNaveModel{
  String title;


  ListBottomSettingNaveModel({required this.title});
}

class ListBottomSettingNav extends StatelessWidget {

  final void Function()? onTap;
  final ListBottomSettingNaveModel listBottomSettingNaveModel;
  const ListBottomSettingNav(this.listBottomSettingNaveModel,{Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
                    Text(listBottomSettingNaveModel.title,style: SettingListTile),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.0,
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
