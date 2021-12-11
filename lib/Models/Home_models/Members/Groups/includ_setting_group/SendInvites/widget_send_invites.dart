

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class WidgetSentInvites extends StatefulWidget {
  const WidgetSentInvites({Key? key}) : super(key: key);

  @override
  _WidgetSentInvitesState createState() => _WidgetSentInvitesState();
}

class _WidgetSentInvitesState extends State<WidgetSentInvites> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.grey.shade100,
          // elevation: 0.0,
          leading:  InkWell(
              onTap: ()
              {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,)),
          title: TextButton(
            onPressed: () {  },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Send Invites',style: TextStyle(color: Colors.black,fontSize: 18),),
              ],
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      color: Colors.grey.shade200.withOpacity(0.5),
                      height: 40,
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
                                    child: Tab(child: Text('Members'),))),
                            Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  //  color: Colors.grey.shade100,
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Tab(child: Text('My Connections',),))),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none
                            ),
                            contentPadding: EdgeInsets.zero,
                            filled: true,
                            fillColor: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(MaterialIcons.person_add_alt,size: 100,),
                // Text('No Photos have been found')
              ],
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(MaterialIcons.person_add_alt,size: 100,),
                // Text('No Photos have been found')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
