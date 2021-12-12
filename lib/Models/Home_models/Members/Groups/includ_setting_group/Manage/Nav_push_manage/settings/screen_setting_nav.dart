import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:flutter/material.dart';

import 'list_bottom_settingNav.dart';

class ScreenSettingNav extends StatefulWidget {
  const ScreenSettingNav({Key? key}) : super(key: key);

  @override
  _ScreenSettingNavState createState() => _ScreenSettingNavState();
}

class _ScreenSettingNavState extends State<ScreenSettingNav> {

  late HomeScreenViewModel viewModel;
  void initState() {
    viewModel = HomeScreenViewModel();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor:Colors.black ,
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Text('Settings',style: TextStyle(color: Colors.black),),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Container(

          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context,index) => SizedBox(),
                    itemCount: viewModel.listBottomSettingNav.length,
                    itemBuilder: (context,index) => ListBottomSettingNav(
                      viewModel.listBottomSettingNav[index],onTap: ()
                    {
                      switch(index){case 0:
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //   ),
                        // );
                        break;}
                      switch(index){case 1:
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //         ScreenSettingNav(),
                        //   ),
                        // );
                        break;}
                      switch(index){case 2:
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>  ScreenPhotosGroups(),
                      //   ),
                      // );
                        break;}
                      switch(index){case 3:
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>  ScreenVideosGroups(),
                      //   ),
                      // );
                        break;}
                      switch(index){case 4:
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ScreenDocument(),
                      //   ),
                      // );
                        break;}
                      switch(index){case 5:
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => DiscussionsScreen(),
                      //   ),
                      // );
                        break;}
                      switch(index){case 6:
                      //   Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => SendInvitesScreen(),
                      //   ),
                      // );
                        break;}

                    },
                    ),

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
