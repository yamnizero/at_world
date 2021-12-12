import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Nav_push_manage/Delete/screen_delete_nav.dart';
import 'Nav_push_manage/Discussions/screen_discusions_nav.dart';
import 'Nav_push_manage/details/details.dart';
import 'Nav_push_manage/settings/screen_setting_nav.dart';
import 'widget_list_botton_manage.dart';

class ScreenManage extends StatefulWidget {
  const ScreenManage({Key? key}) : super(key: key);

  @override
  _ScreenManageState createState() => _ScreenManageState();
}

class _ScreenManageState extends State<ScreenManage> {
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
        title: Text('Manage',style: TextStyle(color: Colors.black),),
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
                    itemCount: viewModel.listBottomManage.length,
                    itemBuilder: (context,index) => WidgetListBottomManage(
                      viewModel.listBottomManage[index],onTap: ()
                    {
                      switch(index){case 0:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(),
                          ),
                        );
                        break;}
                      switch(index){case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ScreenSettingNav(),
                          ),
                        );
                        break;}
                      switch(index){case 2:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  ScreenDiscussionsNav(),
                          ),
                        );
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
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenDeleteNav(),
                        ),
                      );
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
