import 'package:at_world/Models/Home_models/Members/UserFormMembers.dart';
import 'package:at_world/Models/Home_models/Members/profi_member/widget_profile_det.dart';
import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen(this.userFormMembersModel,{Key key}) : super(key: key);
  final UserFormMembersModel userFormMembersModel;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  HomeScreenViewModel viewModel;
  UserFormMembersModel userFormMembersModel;

  @override
  void initState() {
    viewModel = HomeScreenViewModel();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              AntDesign.arrowleft,
              color: black,
            ),
          ),
          title: Text(
            'Profile',
            style: TextStyle(
              color: black,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white70, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage(
                              widget.userFormMembersModel.imageUrl,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 24,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 2.0, // has the effect of softening the shadow
                                  spreadRadius: 2.0, // has the effect of extending the shadow
                                  offset: Offset(
                               5.0, // horizontal, move right 10
                                    0.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              // border: Border.all(
                              //   color: Colors.black,
                              //   width: 8,
                              // ),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blueAccent,

                            ),
                            child: Center(child: Text('Teacher',style: TextStyle(color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Mohammed',
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '@nkname',
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '-',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          'Joined May 6,2020',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight:
                                    FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Follower',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight:
                                    FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Text(
                                '5',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight:
                                    FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Following',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight:
                                    FontWeight.w500),
                              ),
                            ],
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('General Information',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
            ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context,index) => GeneralInformation(
                viewModel.generalInformation[index],
              ),
              separatorBuilder: (context,index) => SizedBox(height: 15,),
              itemCount: viewModel.generalInformation.length,
            ),
          ),
          ],
          ),
        ),
    );
  }
}
