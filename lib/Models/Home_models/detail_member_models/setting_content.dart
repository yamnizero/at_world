

import 'package:at_world/Models/Home_models/detail_member_models/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'timeline.dart';


class SettingContentModel{
  String title;
  String num;

  SettingContentModel({@required this.title,@required this.num});
}

class SettingContent extends StatelessWidget {

  const SettingContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        GestureDetector(
          onTap: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            );
          },
          child: Card(
            elevation: 26,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.user,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Profile',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
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
        ),
        GestureDetector(
          onTap: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  TimeLinePage(),
              ),
            );

          },
          child: Card(
            elevation: 26,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.linechart,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('TimeLine',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
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
        ),
        GestureDetector(
          onTap: (){},
          child: Card(
            elevation: 26,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.adduser,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Connection',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.lightBlue.withOpacity(0.4),
                        child: Center(child: Text('5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
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
        ),
        GestureDetector(
          onTap: (){},
          child: Card(
            elevation: 26,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.addusergroup,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Groups',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.lightBlue.withOpacity(0.4),
                        child: Center(child: Text('2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
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
        ),
        GestureDetector(
          onTap: (){},
          child: Card(
            elevation: 26,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.picture,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Photos',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 13,
                        backgroundColor: Colors.lightBlue.withOpacity(0.4),
                        child: Center(child: Text('5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
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
        ),
        GestureDetector(
          onTap: (){},
          child: Card(
            elevation: 26,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.paperclip,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Documents',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
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
        ),
        GestureDetector(
          onTap: (){},
          child: Card(
            elevation: 26,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.videocamera,size: 25.0,),
                      SizedBox(width: 15,),
                      Center(child: Text('Videos',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
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
        ),
      ],
    );
  }
}
