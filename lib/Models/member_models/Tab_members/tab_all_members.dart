
import 'package:at_world/ViewModel/member_screen_viewModel.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';


class TabAllMembersModel{
  String name;
  String img;
  String identity;

  TabAllMembersModel({required this.name, required this.img, required this.identity});
}


class TabAllMembers extends StatefulWidget {
  final TabAllMembersModel tabAllMembersModel;
  const TabAllMembers(this.tabAllMembersModel,{Key? key}) : super(key: key);

  @override
  _TabAllMembersState createState() => _TabAllMembersState();
}

class _TabAllMembersState extends State<TabAllMembers> {
   TabAllMembersModel? tabAllMembersModel;
   late final MemberScreenViewModel memberViewModel;
  @override
  void initState() {
    memberViewModel = MemberScreenViewModel();
    tabAllMembersModel =TabAllMembersModel(
      name: 'Mohamed',
      img: 'assets/images/me2.png',
      identity: 'student',
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/me3.png'),
                  ),
                  SizedBox(width: 15,),
                  //here want button => make posts page ------**
                  Expanded(

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 8,),
                        Text('Ahmed',
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 8,),
                        Text("Admin",style: Texttime),
                        SizedBox(height: 8,),
                        Divider(height: 10,thickness: 1,),
                      ],
                    ),
                  ),
                  Divider(height: 10,thickness: 1,),
                ],
              ),
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context,index) =>  SizedBox(height: 8,),
              itemCount: memberViewModel.allMembers.length,
              itemBuilder:(context,index) =>   Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 15.0,right: 18.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(tabAllMembersModel!.img),
                    ),
                    SizedBox(width: 15,),
                    //here want button => make posts page ------**
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 8,),
                                  Text(tabAllMembersModel!.name,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 8,),
                                  Text(tabAllMembersModel!.identity,style: Texttime),
                                  SizedBox(height: 8,),

                                ],
                              ),
                              Icon(MaterialIcons.more_horiz,
                                  size: 30.0,color: Colors.grey
                              ),

                            ],
                          ),
                          Divider(height: 10,thickness: 1,),
                        ],
                      ),
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
