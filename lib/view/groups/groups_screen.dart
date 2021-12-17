import 'package:at_world/Models/Groups_models/widget_screen_groupsModels.dart';
import 'package:at_world/Models/Home_models/Members/Groups/details_group.dart';
import 'package:at_world/Models/Home_models/Members/Groups/groups_member.dart';
import 'package:at_world/Models/Home_models/Members/Groups/widget_groups.dart';
import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:flutter/material.dart';

class GroupScreen extends StatefulWidget {

  const GroupScreen({Key? key}) : super(key: key);

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  late HomeScreenViewModel viewModel;
  late DetailsGroupModel detailsGroupModel;
  late  GroupsMembersModel groupsMembersModel;
  void initState() {
    viewModel = new HomeScreenViewModel();
    detailsGroupModel = DetailsGroupModel(
      background: 'assets/images/me.png',
    );
    groupsMembersModel =GroupsMembersModel(
      image:'assets/images/d.png',
      title: 'y Meet',
      publicType:'Club',
      mange: 'Organizer',
      numMem: '3',
    );
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 3.0,
        title: Text(
          'Group',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.white),
              ),
            )),
      ),
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          WidgetScreenGroups(),
          Divider(),
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
                    builder: (BuildContext context) => DetailsGroup(groupsMembersModel,viewModel.detailsGroup[index]),
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
    );
  }
}