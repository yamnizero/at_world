import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/Photo/add_new_img.dart';
import 'package:at_world/ViewModel/home_screen_viewModel.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';





class ShowPhotosPageMembers extends StatefulWidget {

  const ShowPhotosPageMembers({Key? key}) : super(key: key);

  @override
  _ShowPhotosPageMembersState createState() => _ShowPhotosPageMembersState();
}

class _ShowPhotosPageMembersState extends State<ShowPhotosPageMembers> {

  List<String> values = [
    'assets/images/me2.png',
    'assets/images/me.png',
    'assets/images/me3.png',
    'assets/images/me.png',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 10.0,
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
              Text('Photo',style: TextStyle(color: Colors.black,fontSize: 18),),
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

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: GridView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                child: Image.asset(values[index],fit: BoxFit.cover,),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,),
          ),
        ),
      ),



    );
  }
}
