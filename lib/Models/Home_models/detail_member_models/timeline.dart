import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TimeLinePage extends StatelessWidget {
  const TimeLinePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'TimeLine',
          style: TextStyle(
            color: black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: kClub,
                radius: 15,
                child: Icon(
                  Icons.border_color_rounded,
                  color: black,
                  size: 18,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 23.0,
                          backgroundImage: AssetImage('assets/images/me3.png'),
                        ),
                        SizedBox(width: 15,),
                        //here want button => make posts page ------**
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Adele joined the group Teaching Ideas',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: postText),
                            SizedBox(height: 5,),
                            Text('a year ago',style: TextStyle(fontSize: 14,color: Colors.grey),),

                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(AntDesign.like1,size: 17.0,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text('0',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
                            SizedBox(width: 15,),
                            Icon(AntDesign.wechat,size: 17.0,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text('0',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              AntDesign.minus,
                              size: 15.0,color: Colors.grey,
                            ),

                          ],
                        ),

                      ],
                    ),
                    Divider(height: 10,thickness: 1,)
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 23.0,
                          backgroundImage: AssetImage('assets/images/me3.png'),
                        ),
                        SizedBox(width: 15,),
                        //here want button => make posts page ------**
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Adele joined the group Teaching Ideas',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: postText),
                            SizedBox(height: 5,),
                            Text('a year ago',style: TextStyle(fontSize: 14,color: Colors.grey),),

                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            color: Colors.red,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(AntDesign.like1,size: 17.0,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text('0',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
                            SizedBox(width: 15,),
                            Icon(AntDesign.wechat,size: 17.0,color: Colors.grey,),
                            SizedBox(width: 5,),
                            Text('0',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              AntDesign.minus,
                              size: 15.0,color: Colors.grey,
                            ),

                          ],
                        ),

                      ],
                    ),
                    Divider(height: 10,thickness: 1,)
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
