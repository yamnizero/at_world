import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          child: Image.asset(
            'assets/images/me3.png',
          ),
          height: 80,
          width: 200,
          decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [
              //     Color.fromRGBO(232, 232, 228, 1.0),
              //     Color.fromRGBO(211, 211, 211, 1.0),
              //   ],
              //   begin: FractionalOffset.bottomCenter,
              //   end: FractionalOffset.topCenter,
              // ),
              ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: GestureDetector(
              onTap: ()
              {
                Navigator.pop(context);
              },
              child: Icon(
                AntDesign.arrowleft,
                color: Colors.white,
              ),
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    height: height * 0.43,
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
                                          GestureDetector(
                                              onTap:(){},
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                    radius: 25,
                                                    child: Icon(
                                                      AntDesign.user,
                                                      color: Colors.white,
                                                      size: 30,
                                                    )),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Connected',
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap:(){},
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                    radius: 25,
                                                    backgroundColor: Colors.grey
                                                        .withOpacity(0.4),
                                                    child: Icon(
                                                      AntDesign.upcircleo,
                                                      color: Colors.black.withOpacity(0.6),
                                                      size: 28,
                                                    )),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Following',
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap:(){},
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                    radius: 25,
                                                    backgroundColor: Colors.grey
                                                        .withOpacity(0.4),
                                                    child: Icon(
                                                      AntDesign.message1,
                                                      color: Colors.black.withOpacity(0.6),
                                                      size: 28,
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
                                            onTap:(){},
                                            child: Column(
                                              children: [
                                                CircleAvatar(
                                                    radius: 25,
                                                    backgroundColor: Colors.grey
                                                        .withOpacity(0.4),
                                                    child: Icon(
                                                      AntDesign.eye,
                                                      color: Colors.black.withOpacity(0.6),
                                                      size: 28,
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
                    height: 20,
                  ),
                  Column(
                      children: [
                        SizedBox(
                          height: 20,
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
                                      Icon(AntDesign.linechart,size: 25.0,),
                                      SizedBox(width: 15,),
                                      Center(child: Text('Timeline',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
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
                                        child: Center(child: Text("1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
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
                                        child: Center(child: Text("9",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
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
                                      Center(child: Text('Groups',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 13,
                                        backgroundColor: Colors.lightBlue.withOpacity(0.4),
                                        child: Center(child: Text("23",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)),
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
                      ]
                  ),
                  // Container(
                  //   height: height * 0.5,
                  //   width: width,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(30),
                  //     color: Colors.white,
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 15),
                  //     child:
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
