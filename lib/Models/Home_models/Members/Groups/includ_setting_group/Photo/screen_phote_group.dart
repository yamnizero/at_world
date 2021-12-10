
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'add_new_img.dart';


class ScreenPhotosGroups extends StatefulWidget {

  const ScreenPhotosGroups({Key? key}) : super(key: key);

  @override
  State<ScreenPhotosGroups> createState() => _ScreenPhotosGroupsState();
}

class _ScreenPhotosGroupsState extends State<ScreenPhotosGroups> {
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
        ),
        body: TabBarView(
          children: [
            Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Icon(Icons.search,size: 100,),
                Text('No Photos have been found')
              ],
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search,size: 100,),
                Text('No Photos have been found')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
