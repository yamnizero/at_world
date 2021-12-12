
import 'package:at_world/Models/Home_models/Members/Groups/widget_groups.dart';
import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'groups_member.dart';
import 'includ_setting_group/Discussion/discussions_screen.dart';
import 'includ_setting_group/Manage/screen_manage.dart';
import 'includ_setting_group/SendInvites/screen_send_invites.dart';
import 'includ_setting_group/SendMessages/screen_send_messages.dart';
import 'includ_setting_group/document/screen_documents.dart';
import 'includ_setting_group/feed/feed_seeting_groups.dart';
import 'includ_setting_group/member/screen_member_d_groupa.dart';
import 'includ_setting_group/Photo/screen_phote_group.dart';
import 'includ_setting_group/video/screen_videos_groups.dart';
import 'listBurronPageGroups.dart';



class DetailsGroupModel{
 String background;

 DetailsGroupModel({required this.background});
}


class DetailsGroup extends StatefulWidget {

  final DetailsGroupModel detailsGroupModel;
  final GroupsMembersModel groupsMembersModel;
  const DetailsGroup(this.groupsMembersModel,this.detailsGroupModel,{Key? key}) : super(key: key);

  @override
  State<DetailsGroup> createState() => _DetailsGroupState();
}

class _DetailsGroupState extends State<DetailsGroup> {

   GroupsMembersModel? groupsMembersModel;
   DetailsGroupModel? detailsGroupModel;
 late HomeScreenViewModel viewModel;
  void initState() {
    viewModel = HomeScreenViewModel();
    detailsGroupModel = DetailsGroupModel(
      background: 'assets/images/me.png',
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child : Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.50,
                        color: Colors.red,
                        child: Image.asset(
                        detailsGroupModel!.background,
                        fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                  Positioned(
                      top: 45,
                      left: 25,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Icon(Icons.arrow_back_ios,size: 16,color: Colors.white,),
                        ),
                      )
                  ),
                  Positioned(
                      top: 45,
                      right: 25,
                      child: GestureDetector(
                        onTap: (){
                          buttomSheetOrganizer(context);
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Icon(MaterialIcons.more_horiz,size: 18,color: Colors.white,),
                        ),
                      )
                  ),
                  Positioned(
                    top: 100,
                    left: 70,
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          width: MediaQuery.of(context).size.width / 3.9,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset(
                            widget.groupsMembersModel.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(widget.groupsMembersModel.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('Public / ${widget.groupsMembersModel.publicType} -',
                                style: TextStyle(color: Colors.grey, fontSize: 16)),
                            SizedBox(
                              width: 4,
                            ),
                            Text('${widget.groupsMembersModel.numMem} members',
                                style: TextStyle(color: Colors.grey, fontSize: 16)),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: ()
                          {
                            buttomSheetOrganizer(context);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width/1.5,
                            height: 50,
                            child: Text(
                              'Innovation is truly a confusing buzzword which many people love to hate.'
                                  'Every business leader agrees that it is important.but nobody can quit semm'
                                  'to agree on what it actually is or what it means.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 16,color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: ()
                          {
                            buttomSheetOrganizer(context);                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width/3.3,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15.0,
                                    backgroundImage:AssetImage('assets/images/me2.png'),
                                  ),
                                  SizedBox(width: 5,),
                                  Text('Organizer',style: TextStyle(color: Colors.blue),)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context,index) => Divider(height: 10,thickness: 1,),
                  itemCount: viewModel.listButtonPage.length,
                  itemBuilder: (context,index) => ListButtonPageGroups(
                    viewModel.listButtonPage[index],onTap: ()
                  {
                    switch(index){case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FeedSettingGroups(),
                      ),
                    );
                    break;}
                    switch(index){case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ScreenMemberDGroup(),
                      ),
                    );
                      break;}
                    switch(index){case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  ScreenPhotosGroups(),
                      ),
                    );break;}
                    switch(index){case 3:
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  ScreenVideosGroups(),
                      ),
                    );break;}
                    switch(index){case 4:
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenDocument(),
                      ),
                    );break;}
                    switch(index){case 5:
                      Navigator.push(
                     context,
                      MaterialPageRoute(
                     builder: (context) => DiscussionsScreen(),
                      ),
                    );break;}
                    switch(index){case 6: Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SendInvitesScreen(),
                      ),
                    );break;}
                    switch(index){case 7: Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenSendMessages(),
                      ),
                    );break;}
                    switch(index){case 8: Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenManage(),
                      ),
                    );break;}

                  },
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
