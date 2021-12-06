

import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'add_new_img.dart';



Widget AppBatPhoto(context) {
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
          Text('Members',style: TextStyle(color: Colors.black,fontSize: 18),),
        ],
      ),
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddNewPhoto(),
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
    bottom: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            color: Colors.grey.shade200.withOpacity(0.5),
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white
                ),
                labelColor:Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                tabs: [
                  Container(
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        // color: Colors.grey.shade100,
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Tab(child: Text('Photos'),))),
                  Container(
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        //  color: Colors.grey.shade100,
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Tab(child: Text('Albums',),))),

                ],
              ),
            ),
          ),
        )
    ),
  );
}

Widget buttomSheetPupbliPhoto(context) {
  showModalBottomSheet(context: context, builder: (BuildContext c)
  {
    return Wrap(
      children: [
        Container(
          color: Colors.grey.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        'Visibility',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.grey.shade400,
                        child: Icon(
                          Icons.close,
                          size: 15.0,
                          color:Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(height: 10,thickness: 1,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Public',
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                                Icon(MaterialIcons.check,color: Colors.blue,)
                              ],
                            ),
                          ),
                          Divider(height: 10,thickness: 1,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('All Members',
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                                // Icon(MaterialIcons.check)
                              ],
                            ),
                          ),
                          Divider(height: 10,thickness: 1,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('My Connection',
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                                // Icon(MaterialIcons.check)
                              ],
                            ),
                          ),
                          Divider(height: 10,thickness: 1,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Only Me',
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                                //Icon(MaterialIcons.check)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  );
}



