import 'package:at_world/Models/Home_models/Members/MainMember/setting_content.dart';

import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:at_world/share/components/componets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../chat/chat_page.dart';

class ContentPage extends StatefulWidget {
  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  HomeScreenViewModel viewModel;
  bool connection = true;
  bool follow = false;

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            AntDesign.arrowleft,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              width: width,
              height: height / 3.5,
              child: Image.asset(
                'assets/images/me3.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
              child: Column(
                children: [
                  Container(
                    height: height * 0.45,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: innerHeight * 0.72,
                                width: innerWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Text(
                                      'Mohammed',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '@mohammed',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.3),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                connection = !connection;
                                                Fluttertoast.showToast(
                                                  msg: connection
                                                      ? 'Connection request cancel'
                                                      : 'Connection request sent',
                                                  toastLength:
                                                      Toast.LENGTH_SHORT,
                                                  backgroundColor: Colors.grey
                                                      .withOpacity(0.5),
                                                  textColor: Colors.black,
                                                  // gravity: ToastGravity.BOTTOM,
                                                  fontSize: 12,
                                                );
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.white),
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                    radius: 22,
                                                    // isPassword ? Icons.visibility : Icons.visibility_off,
                                                    child: Icon(
                                                      connection
                                                          ? AntDesign.user
                                                          : Icons.close,
                                                      color: Colors.white,
                                                      size: 22,
                                                    )),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Connect',
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                follow = !follow;
                                                follow ? Fluttertoast.showToast(
                                                  msg:  'Connection request sent',
                                                  toastLength:
                                                      Toast.LENGTH_SHORT,
                                                  backgroundColor: Colors.grey
                                                      .withOpacity(0.5),
                                                  textColor: Colors.black,
                                                  // gravity: ToastGravity.BOTTOM,
                                                  fontSize: 12,
                                                ):buttomSheetFollow(context);
                                              });

                                            },
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                    radius: 22,
                                                    backgroundColor: Colors.grey
                                                        .withOpacity(0.4),
                                                    child: Icon(
                                                      AntDesign.upcircleo,
                                                      color: Colors.black
                                                          .withOpacity(0.6),
                                                      size: 22,
                                                    )),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  follow ? 'Following' :'Follow' ,
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ChatDetailPage(),
                                                ),
                                              );
                                            },
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                    radius: 22,
                                                    backgroundColor: Colors.grey
                                                        .withOpacity(0.4),
                                                    child: Icon(
                                                      AntDesign.message1,
                                                      color: Colors.black
                                                          .withOpacity(0.6),
                                                      size: 22,
                                                    )),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Message',
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                    radius: 22,
                                                    backgroundColor: Colors.grey
                                                        .withOpacity(0.4),
                                                    child: Icon(
                                                      AntDesign.eye,
                                                      color: Colors.black
                                                          .withOpacity(0.6),
                                                      size: 22,
                                                    )),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'View As',
                                                  style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 69,
                                  child: CircleAvatar(
                                    radius: 65,
                                    backgroundImage: AssetImage(
                                      'assets/images/me3.png',
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(children: [
                    SizedBox(
                      height: 20,
                    ),
                    SettingContent(),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
