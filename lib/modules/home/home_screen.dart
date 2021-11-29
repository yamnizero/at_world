
import 'package:at_world/modules/home/home_screen_viewmodel.dart';
import 'package:at_world/modules/signup/sign.dart';
import 'package:at_world/share/components/UserForm.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenViewModel viewModel;
  @override
  void initState() {
    viewModel = HomeScreenViewModel();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //member
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Members',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See all",
                        style: textSee.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index) => buildMembers(),
                    separatorBuilder: (context,index) => SizedBox(width: 15,),
                    itemCount: 8,
                  ),
                ),
                //Activity
                Divider(color: Colors.black38,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Activity',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See all",
                        style: textSee.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 300,
                  child: SingleChildScrollView(
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context,index) => buildActivity(),
                      separatorBuilder: (context,index) => SizedBox(height: 15,),
                      itemCount: 5,
                    ),
                  ),
                ),
                Divider(color: Colors.black38,),
                //Courses
                Container(
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.2),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Courses',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "See all",
                              style: textSee.copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index) => buildCourses(),
                            separatorBuilder: (context,index) => SizedBox(width:8,),
                            itemCount: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.black38,),
                //Forums
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Forums',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "See all",
                        style: textSee.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 300,
                  child: SingleChildScrollView(
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context,index) => UserForm(viewModel.userForms[index],onTap: (){

                      },),
                      separatorBuilder: (context,index) => SizedBox(height: 15,),
                      itemCount: viewModel.userForms.length,
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      );

  }

  Widget buildMembers() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundImage:NetworkImage(
              'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
            ),
          ),
          CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.white,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
    ],
  );

 Widget buildActivity() => Row(
   children: [
     //here want button => make profile page ------**
     CircleAvatar(
       radius: 23.0,
       backgroundImage:NetworkImage(
         'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/vyls0odog0r31lb2_1636510424.jpeg',
       ),
     ),
     SizedBox(width: 15,),
     //here want button => make posts page ------**
     Expanded(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text('Mohammed posted an update',
               maxLines: 3,
               overflow: TextOverflow.ellipsis,
               style: postText),
           SizedBox(height: 5,),
           Text('4 months ago',style: timeText,),
         ],
       ),
     ),

   ],
 );

 Widget buildCourses() => Container(

   width: 200,
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Stack(
         children: [
           ClipRRect(
             borderRadius: BorderRadius.circular(20.0),
             child: Image.asset(
               'assets/images/flutter.png',
               fit: BoxFit.cover,
               height: 100,
               width: 180,
             ),
           ),
           Positioned(
             top: 7,
             left: 0,
             child: Container(
               height: 25,
               width: 80,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   topRight: Radius.circular(40),
                   topLeft: Radius.circular(30),
                   bottomRight: Radius.circular(40),
                 ),
                 color: Colors.blue,
                 boxShadow: [
                   BoxShadow(
                     color: Colors.blue.withOpacity(0.3)
                   )
                 ]
               ),
               child: Center(
                 child: Text(
                    'Start',
                   style: TextStyle(color: Colors.white),
                 ),
               ),
             ),
           ),
         ],
       ),
       Text(
         'How to build application How to build application How to build application',
         overflow: TextOverflow.ellipsis,
         style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),
       ),
       Text('Ahmed'),
     ],
   ),
 );


}


