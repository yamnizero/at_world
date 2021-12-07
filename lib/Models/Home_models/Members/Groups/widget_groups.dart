

import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'includ_setting_group/feed_seeting_groups.dart';
import 'includ_setting_group/screen_member_d_groupa.dart';
import 'includ_setting_group/screen_phote_group.dart';
import 'includ_setting_group/screen_videos_groups.dart';

Widget buttonOrganizer({
  @required Function function,
  @required String text,
  @required double width,
  @required double height,
}) =>
    GestureDetector(
      onTap: function,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(25)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(MaterialIcons.check),
            Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );


Widget buttomSheetOrganizer(context) {
  showModalBottomSheet(context: context, builder: (BuildContext c)
  {
    return Wrap(
      children: [
        Container(
          color: Colors.grey.shade100,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage:AssetImage('assets/images/me2.png'),
                        ),
                        SizedBox(width: 15,),
                        Center(child: Text('Mohammed',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.close,
                              color: Colors.black26,
                              size: 15.0,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(height: 10,thickness: 1,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Innovation is truly a confusing buzzword which many people love to hate.'
                              'Every business leader agrees that it is important.but nobody can quit semm'
                              'to agree on what it actually is or what it means.',
                        maxLines: 5,
                        overflow: TextOverflow.clip,
                        style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: GestureDetector(
                          onTap: () {
                            showAlertDialogGroups(context);
                          },
                          child: Row(
                            children: [
                              Icon(Ionicons.log_out_sharp,size: 30,),
                              SizedBox(width: 10,),
                              Text("Leave",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ],
    );
  }
  );
}


void showAlertDialogGroups(context)
{
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context)
      {
        return AlertDialog(
          title: new Text('Error while leaving group'),
          content: new Text('As you are the only organizer of this group.you cannot leave it.You can either delete the group or promote '
              'another member to be an organizer first and then leave the group.',
            maxLines: 5,
            overflow: TextOverflow.clip,
          ),
          actions: <Widget>[
            new TextButton (
                onPressed: () => Navigator.of(context).pop(),
                child: new Text('Ok')
            )
          ],
        );
      }
  );
}

Widget ListButtonPageGoupe(context)
{

  return  Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FeedSettingGroups(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(MaterialIcons.timeline,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Feed',style:SettingListTile)),
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
          InkWell(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ScreenMemberDGroup(),
                ),
              );

            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(MaterialIcons.card_membership,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Members',style: SettingListTile)),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.lightBlue.withOpacity(0.4),
                      child: Center(child: Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
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
          Divider(height: 10,thickness: 1,),
          GestureDetector(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  ScreenPhotosGroups(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.adduser,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Photos',style: SettingListTile)),
                    ],
                  ),
                  Row(
                    children: [
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
          Divider(height: 10,thickness: 1,),
          InkWell(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  ScreenVideosGroups(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.videocamera,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Videos',style: SettingListTile)),
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
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.paperclip,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Documents',style: SettingListTile)),
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
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.wechat,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Discussions',style: SettingListTile)),
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
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.adduser,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Send Invites',style:SettingListTile)),
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
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.inbox,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Send Messages',style: SettingListTile)),
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
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.setting,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Manage',style: SettingListTile)),
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

        ],
      ),
    ),
  );
}


