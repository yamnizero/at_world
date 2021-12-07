

import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

import 'add_new_img.dart';
import 'add_new_video.dart';

Widget AppBatVideos(context) {
  return  AppBar(
    backgroundColor: Colors.grey.shade100,
    // elevation: 0.0,
    leading:  InkWell(
        onTap: ()
        {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,)),
    title: TextButton(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Video',style: TextStyle(color: Colors.black,fontSize: 18),),
        ],
      ),
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: InkWell(
          onTap: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddNewVideos(),
              ),
            );
          },
          child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.6),
              radius: 15,
              child: Icon(
                Icons.add,
                color: black,
                size: 18,
              )),
        ),
      ),
    ],
  );
}