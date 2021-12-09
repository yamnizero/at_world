import 'package:at_world/Models/Home_models/Members/Groups/widget_groups.dart';
import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'details_group.dart';

class GroupsMembersModel {
  String image;
  String title;
  String publicType;
  String mange;
  String numMem;

  GroupsMembersModel(
      {@required this.image,
      @required this.title,
      @required this.publicType,
      @required this.mange,
      @required this.numMem});
}

class GroupsMember extends StatefulWidget {
  final GroupsMembersModel groupsMembersModel;
  final void Function() onTap;
  const GroupsMember(this.groupsMembersModel,{Key key,this.onTap}) : super(key: key);

  @override
  State<GroupsMember> createState() => _GroupsMemberState();
}

class _GroupsMemberState extends State<GroupsMember> {

  HomeScreenViewModel viewModel;
  GroupsMembersModel groupsMembersModel;
  void initState() {
    viewModel = new HomeScreenViewModel();
    groupsMembersModel = GroupsMembersModel();
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  AntDesign.arrowleft,
                  color: black,
                ),
              ],
            ),
          ),
        ),
        title: Text(
          'Groups',
          style: TextStyle(
            color: black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              itemCount:viewModel.memebergroups.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context,index) => Divider(height: 10,thickness: 1,),
              itemBuilder:(context,index)=> GestureDetector(

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => DetailsGroup(viewModel.memebergroups[index],viewModel.detailsGroup[index]),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            width: MediaQuery.of(context).size.width / 3.9,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              viewModel.memebergroups[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(viewModel.memebergroups[index].title,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text('Public / ${viewModel.memebergroups[index].publicType} -',
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 16)),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text('${viewModel.memebergroups[index].numMem} members',
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 16)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    buttonOrganizer(
                                      function: () {
                                        buttomSheetOrganizer(context);
                                      },
                                      width: MediaQuery.of(context).size.width / 3,
                                      height: 50,
                                      text: viewModel.memebergroups[index].mange,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
