


import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ScreenMemberDGroup extends StatelessWidget {
  const ScreenMemberDGroup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        leading:  Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,),
        title: TextButton(
          onPressed: ()
          {

          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Members',style: TextStyle(color: Colors.black,fontSize: 18),),
            ],
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child:Padding(
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
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 15.0),
                child: Text('ORGANIZER'),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/images/me3.png'),
                    ),
                    SizedBox(width: 15,),
                    //here want button => make posts page ------**
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Ahmed',
                              overflow: TextOverflow.ellipsis,
                             ),
                          SizedBox(height: 8,),
                          Text("Join 3 years ago",style: Texttime),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
              ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 15.0),
                child: Text('MEMBERS'),
              ),
            ),

        // ListView.separated(
        //   padding: const EdgeInsets.all(8),
        //   itemCount: 5,
        //   itemBuilder: (BuildContext context, int index) {
        //     return Row(
        //       children: [
        //         CircleAvatar(
        //           radius: 30.0,
        //           backgroundImage: AssetImage('assets/images/me3.png'),
        //         ),
        //         SizedBox(width: 15,),
        //         //here want button => make posts page ------**
        //         Expanded(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text('Ahmed',
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //               SizedBox(height: 8,),
        //               Text("Join 3 years ago",style: Texttime),
        //
        //             ],
        //           ),
        //         ),
        //         Icon(MaterialIcons.more_horiz,
        //             size: 30.0,color: Colors.grey
        //         ),
        //       ],
        //     );
        //   },
        //   separatorBuilder: (BuildContext context,  index) => const Divider(),
        // ),

            Padding(
              padding: const EdgeInsets.only(left: 18.0,top: 15.0,right: 18.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/me3.png'),
                  ),
                  SizedBox(width: 15,),
                  //here want button => make posts page ------**
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Ahmed',
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 8,),
                        Text("Join 3 years ago",style: Texttime),

                      ],
                    ),
                  ),
                  Icon(MaterialIcons.more_horiz,
                    size: 30.0,color: Colors.grey
              ),
          ],
        ),
            ),
            Divider(height: 10,thickness: 1,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,top: 15.0,right: 18.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/me3.png'),
                  ),
                  SizedBox(width: 15,),
                  //here want button => make posts page ------**
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Ahmed',
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 8,),
                        Text("Join 3 years ago",style: Texttime),

                      ],
                    ),
                  ),
                  Icon(MaterialIcons.more_horiz,
                      size: 30.0,color: Colors.grey
                  ),
                ],
              ),
            ),
            Divider(height: 10,thickness: 1,),
      ]
      ),
    )
    );
  }
}
