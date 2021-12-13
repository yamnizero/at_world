import 'package:at_world/Models/member_models/members_models.dart';
import 'package:flutter/material.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey.shade100,
            elevation: 0.0,
            title: Text('Members',style: TextStyle(color: Colors.black,fontSize: 18),),
            centerTitle: true,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(120),
                child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
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
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TabBar(
                          unselectedLabelColor: Colors.redAccent,
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.redAccent, Colors.orangeAccent]),
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.redAccent),
                          tabs: [
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Recently Active"),
                              ),
                            ),
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Newest Members"),
                              ),
                            ),
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Alphabetical"),
                              ),
                            ),
                          ]
                      ),
                    ),
                  ],
                )
            ),
          ),
          body: TabBarView(
            children: [

              buildPage('Recently Active'),
              buildPage('Newest Members'),
              buildPage('Alphabetical'),


            ],
          ),
      ),
    );
  }
  Widget  buildPage(String text) => Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 28),
    ),
  );
}