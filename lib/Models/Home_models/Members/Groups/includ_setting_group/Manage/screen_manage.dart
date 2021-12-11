import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenManage extends StatefulWidget {
  const ScreenManage({Key? key}) : super(key: key);

  @override
  _ScreenManageState createState() => _ScreenManageState();
}

class _ScreenManageState extends State<ScreenManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor:Colors.black ,
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Text('Manage',style: TextStyle(color: Colors.black),),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                // child: ListView.separated(
                //   physics: NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   separatorBuilder: (context,index) => Divider(height: 10,thickness: 1,),
                //   itemCount: viewModel.listButtonPage.length,
                //   itemBuilder: (context,index) => ListButtonPageGroups(
                //     viewModel.listButtonPage[index],onTap: ()
                //   {
                //     switch(index){case 0:
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => FeedSettingGroups(),
                //         ),
                //       );
                //       break;}
                //     switch(index){case 1:
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) =>
                //               ScreenMemberDGroup(),
                //         ),
                //       );
                //       break;}
                //     switch(index){case 2:
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) =>  ScreenPhotosGroups(),
                //         ),
                //       );break;}
                //     switch(index){case 3:
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) =>  ScreenVideosGroups(),
                //         ),
                //       );break;}
                //     switch(index){case 4:
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => ScreenDocument(),
                //         ),
                //       );break;}
                //     switch(index){case 5:
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => DiscussionsScreen(),
                //         ),
                //       );break;}
                //     switch(index){case 6: Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => SendInvitesScreen(),
                //       ),
                //     );break;}
                //     switch(index){case 7: Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => ScreenSendMessages(),
                //       ),
                //     );break;}
                //     switch(index){case 8: Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => ScreenManage(),
                //       ),
                //     );break;}
                //
                //   },
                //   ),
                //
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
