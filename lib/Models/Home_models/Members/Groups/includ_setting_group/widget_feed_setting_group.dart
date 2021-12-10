


import 'package:at_world/Models/Home_models/Members/UserFormMembers.dart';
import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class WidgetFeedSettingGroup extends StatefulWidget {
  final UserFormMembersModel userFormMembersModel;
  const WidgetFeedSettingGroup(this.userFormMembersModel,{Key? key}) : super(key: key);



  @override
  State<WidgetFeedSettingGroup> createState() => _WidgetFeedSettingGroupState();
}

class _WidgetFeedSettingGroupState extends State<WidgetFeedSettingGroup> {

  late UserFormMembersModel userFormMembersModel;
  HomeScreenViewModel? viewModel;

  void initState() {
    viewModel = HomeScreenViewModel();
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 23.0,
                      backgroundImage: AssetImage('assets/images/me3.png'),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Adele joined the group Teaching Ideas',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: postText),
                          SizedBox(height: 5,),
                          Text('a year ago',style: TextStyle(fontSize: 14,color: Colors.grey),),

                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(AntDesign.like1,size: 17.0,color: Colors.grey,),
                        SizedBox(width: 5,),
                        Text('0',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(width: 15,),
                        Icon(AntDesign.wechat,size: 17.0,color: Colors.grey,),
                        SizedBox(width: 5,),
                        Text('0',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(MaterialIcons.more_horiz,
                          size: 22,color: Colors.black,
                        ),

                      ],
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Divider(height: 10,thickness: 1,)
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 23.0,
                      backgroundImage: AssetImage('assets/images/me3.png'),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Adele joined the group Teaching Ideas',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: postText),
                          SizedBox(height: 5,),
                          Text('a year ago',style: TextStyle(fontSize: 14,color: Colors.grey),),

                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  height:250,
                  child:   Image.asset(
                    'assets/images/b.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Icon(AntDesign.like1,size: 17.0,color: Colors.grey,),
                        SizedBox(width: 5,),
                        Text('0',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(width: 15,),
                        Icon(AntDesign.wechat,size: 17.0,color: Colors.grey,),
                        SizedBox(width: 5,),
                        Text('0',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(MaterialIcons.more_horiz,
                          size: 22,color: Colors.black,
                        ),

                      ],
                    ),

                  ],
                ),
                SizedBox(height: 15,),
                Divider(height: 10,thickness: 1,)
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 23.0,
                      backgroundImage: AssetImage('assets/images/me3.png'),
                    ),
                    SizedBox(width: 15,),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Adele commented on the post, After Avengers:Endgame,Should Marvel take 2020 off?',
                              maxLines: 3,
                              overflow: TextOverflow.clip,
                              style: postText
                          ),
                          SizedBox(height: 5,),
                          Text('a year ago',style: TextStyle(fontSize: 14,color: Colors.grey),),

                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,

                        borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(20),

                          topRight:  Radius.circular(20),
                        ),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 30.0,right: 15.0),
                        child: Center(
                          child: Text('Adele commented on the post, After Avengers:Endgame,Should Marvel take 2020 off?',
                              maxLines: 3,
                              overflow: TextOverflow.clip,
                              style: postText
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.only(
                          bottomLeft:Radius.circular(20),
                          bottomRight:  Radius.circular(20),
                        ),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 30.0,right: 15.0),
                        child: Row(
                          children: [
                            Icon(Ionicons.arrow_forward_circle_outline,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Center(
                              child: Text('View Post',
                                  maxLines: 3,
                                  overflow: TextOverflow.clip,
                                  style: postText
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(AntDesign.like1,size: 17.0,color: Colors.grey,),
                        SizedBox(width: 5,),
                        Text('0',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(MaterialIcons.more_horiz,
                          size: 22,color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Divider(height: 10,thickness: 1,)
              ],
            ),
          ),
        ),

      ],
    );
  }
}
