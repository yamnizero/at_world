
import 'package:at_world/Models/Home_models/Activity/UserFormActivity.dart';
import 'package:at_world/Models/Home_models/Courses/Courses.dart';
import 'package:at_world/Models/Home_models/Forums/UserFormForums.dart';
import 'package:at_world/Models/Home_models/Groups/Groups.dart';
import 'package:at_world/Models/Home_models/Members/UserFormMembers.dart';
import 'package:at_world/Models/Home_models/Members/MainMember/content_page.dart';
import 'package:at_world/Models/Home_models/My_Progress/my_progress.dart';
import 'package:at_world/Models/Home_models/Notification/UserFormNotification.dart';
import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:at_world/view/members/members_screen.dart';
import 'package:at_world/view/signup/sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeScreenViewModel viewModel;
 late UserFormMembersModel userFormMembersModel;
  @override
  void initState() {
    viewModel = HomeScreenViewModel();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: .0,
        title: Center(
          child: Image.asset(
            'assets/images/atworld.png',
            height: 32,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
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
                          builder: (context) => ContentPage(viewModel.userMembers[index],viewModel.settingpage[index]),
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
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context,index) => UserFormActivity(viewModel.userActivity[index],
                        onTap: (){},),
                      separatorBuilder: (context,index) => SizedBox(height: 15,),
                      itemCount: viewModel.userActivity.length,
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
                              height: 165,
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
                              height: 165,
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
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context,index) => UserFormNotifications(viewModel.notification[index],onTap: (){},),
                      separatorBuilder: (context,index) => SizedBox(height: 15,),
                      itemCount: viewModel.notification.length,
                    ),
                  ),

                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 20,),
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
            )

          ],
        ),
      ),
    );

  }







}



class Header extends StatefulWidget {
  final String? title;
  final void Function()? onTap;
  const Header({Key? key,required this.title,required this.onTap}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  List<String> paths = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index)=> Image.asset(paths[index]),itemCount: paths.length,);
  }

  void onaddPhoto(){
    // paths.insert(0, element)
  }
}

