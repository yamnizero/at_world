import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

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
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Positioned(
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
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white),
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: 25,
                                    // isPassword ? Icons.visibility : Icons.visibility_off,
                                    child: Icon(
                                      AntDesign.user,
                                      color: Colors.white,
                                      size: 30,
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
                            onPressed: () {},
                            child: Column(
                              children: [
                                CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.grey
                                        .withOpacity(0.4),
                                    child: Icon(
                                      AntDesign.upcircleo,
                                      color: Colors.black
                                          .withOpacity(0.6),
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

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
