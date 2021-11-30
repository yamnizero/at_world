
import 'package:at_world/Models/Home_models/Courses.dart';
import 'package:at_world/Models/Home_models/Groups.dart';
import 'package:at_world/Models/Home_models/UserFormActivity.dart';
import 'package:at_world/Models/Home_models/UserFormForums.dart';
import 'package:at_world/Models/Home_models/UserFormMembers.dart';
import 'package:at_world/Models/Home_models/UserFormNotification.dart';
import 'package:at_world/Models/Home_models/detail_member_models/detail_members.dart';
import 'package:at_world/Models/Home_models/my_progress.dart';
import 'package:at_world/Modules/members/members_screen.dart';
import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:at_world/modules/signup/sign.dart';
import 'package:at_world/share/components/pro.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenViewModel viewModel;
  @override
  void initState() {
    viewModel = HomeScreenViewModel();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //member
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Members',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MembersScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See all",
                        style: textSee.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index) => UserFormMembers(viewModel.userMembers[index],
                    onTap: ()
                    {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                    },
                    ),
                    separatorBuilder: (context,index) => SizedBox(width: 15,),
                    itemCount: viewModel.userMembers.length,
                  ),
                ),
                //Activity
                Divider(color: Colors.black38,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Activity',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See all",
                        style: textSee.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 300,
                  child: SingleChildScrollView(
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context,index) => UserFormActivity(viewModel.userActivity[index],
                        onTap: (){},),
                      separatorBuilder: (context,index) => SizedBox(height: 15,),
                      itemCount: viewModel.userActivity.length,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                //Courses
                Container(
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.07),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Courses',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "See all",
                                style: textSee.copyWith(
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index) => Courses(viewModel.courses[index],
                              onTap: (){},

                              ),
                              separatorBuilder: (context,index) => SizedBox(width:8,),
                              itemCount: viewModel.courses.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                //Forums
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Forums',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See all",
                        style: textSee.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 300,
                  child: SingleChildScrollView(
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context,index) => UserFormForums(viewModel.userForms[index],
                      onTap: (){},
                      ),
                      separatorBuilder: (context,index) => SizedBox(height: 15,),
                      itemCount: viewModel.userForms.length,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                //Groups
                Container(
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.07),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Groups',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "See all",
                                style: textSee.copyWith(
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index) => Groups(viewModel.groups[index],
                                onTap: (){},

                              ),
                              separatorBuilder: (context,index) => SizedBox(width:8,),
                              itemCount: viewModel.groups.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                //Notification
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Notification',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See all",
                        style: textSee.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 300,
                  child: SingleChildScrollView(
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context,index) => UserFormNotifications(viewModel.notification[index],onTap: (){},),
                      separatorBuilder: (context,index) => SizedBox(height: 15,),
                      itemCount: viewModel.notification.length,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Divider(color: Colors.black,),
                SizedBox(height: 10,),
                Text('My Progress',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context,index) => MyProgress(viewModel.myprogress[index],onTap: (){},),
                        separatorBuilder: (context,index) => SizedBox(height: 15,),
                        itemCount: viewModel.myprogress.length,

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  }







}


