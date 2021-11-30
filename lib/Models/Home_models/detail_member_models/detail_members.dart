
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class DetailMembers extends StatelessWidget {
  const DetailMembers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   final double coverHeight =200;
   final double profileheight =144;
   final top =coverHeight-profileheight/2;


    return Scaffold(
      body:  ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
              children: [
                Container(
                  child: Image.asset('assets/images/me2.png',
                  width: double.infinity,
                    height: coverHeight,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: top,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.95,
                    child: Card(
                      elevation: 16,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: profileheight/2.5,
                            backgroundImage: AssetImage('assets/images/me.png'),
                          ),
                          SizedBox(height: 15,),
                          Text("MOhamef"),
                          SizedBox(height: 15,),
                          Text("MOhamef"),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.person,size: 12,),
                                  SizedBox(height: 15,),
                                  Text("MOhamef"),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.person,size: 12,),
                                  SizedBox(height: 15,),
                                  Text("MOhamef"),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.person,size: 12,),
                                  SizedBox(height: 15,),
                                  Text("MOhamef"),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.person,size: 12,),
                                  SizedBox(height: 15,),
                                  Text("MOhamef"),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          SizedBox(height: 220,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Card(
                    elevation: 16,
                    shadowColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.book,size: 25.0,),
                          Center(child: Text('title',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                          SizedBox(width:150),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Card(
                    elevation: 16,
                    shadowColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.book,size: 25.0,),
                          Center(child: Text('title',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                          SizedBox(width:150),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Card(
                    elevation: 16,
                    shadowColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.book,size: 25.0,),
                          Center(child: Text('title',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                          SizedBox(width:150),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Card(
                    elevation: 16,
                    shadowColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.book,size: 25.0,),
                          Center(child: Text('title',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                          SizedBox(width:150),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ),


        ],
      ),

    );
  }

}
