import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';


Widget ToolsPos(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(

            width: MediaQuery.of(context).size.width - 190,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(Ionicons.text_outline),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Ionicons.ios_camera_reverse_outline),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Ionicons.ios_videocam_outline),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Ionicons.md_image_outline),
                ),
                InkWell(
                  onTap: () {},
                  child:  Icon(Ionicons.ios_link),
                ),
              ],
            ),
          ),
          SizedBox(width: 5,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.shade50,
              ),

              height: 50,
              child:  Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Colors.white,
                      ),
                      child:Image.asset('assets/images/me2.png',fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 5,),
                    Text('Business Meet',style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// here button tools->>>>>>>>
