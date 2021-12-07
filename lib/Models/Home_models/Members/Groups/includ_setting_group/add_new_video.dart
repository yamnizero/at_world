
import 'dart:io';

import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/video_item.dart';
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/widget_photo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class AddNewVideos extends StatefulWidget {
  const AddNewVideos({Key key}) : super(key: key);


  @override
  _AddNewVideosState createState() => _AddNewVideosState();
}

class _AddNewVideosState extends State<AddNewVideos> {

  TextEditingController TextWithVideo = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        // elevation: 0.0,
        leading:  Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,),
        title: TextButton(
          onPressed: (){},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Add New Photo ',style: TextStyle(color: Colors.black,fontSize: 18),),
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: ()
              {
                //
              },
              child: TextButton(
                  child: Text('Upload',style: TextStyle(color: Colors.deepOrange),)
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child:  TextField(
                      controller:TextWithVideo ,
                      decoration: InputDecoration(
                          focusedBorder: new UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.grey
                            ), ),
                          hintText: 'Write something about your photos,to be'
                              'shown on your timeline'
                      ),
                      maxLines:3,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child:
                  Row(
                    children: [
                      Container(),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: ()
                        {
                          showDialog(context: context, builder: (context)=>AlertDialog(
                            title: GestureDetector(
                                onTap: ()
                                {
                                  // VideoItem(
                                  //
                                  // );
                                },
                                child: Text('Camera')),
                            content: InkWell(
                                onTap: ()
                                {
                                  //function
                                },
                                child: Text('Gellery')),
                          ));
                        },
                        child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Icon(MaterialIcons.video_library,color: Colors.blue,)),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: ()
                    {
                      buttomSheetPupbliPhoto(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width/3.5,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Ionicons.earth_outline),
                          Text('Public')
                        ],
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),

    );
  }
}
