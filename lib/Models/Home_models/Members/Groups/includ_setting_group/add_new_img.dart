
import 'dart:io';

import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/widget_photo_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:image_picker/image_picker.dart';

class AddNewPhoto extends StatefulWidget {
  const AddNewPhoto({Key key}) : super(key: key);

  @override
  State<AddNewPhoto> createState() => _AddNewPhotoState();
}

class _AddNewPhotoState extends State<AddNewPhoto> {
  TextEditingController TextWithImage = TextEditingController();
  var formKey = GlobalKey<FormState>();
  File image;


  Future pickImageGellery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
         setState(() =>this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageCamera(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() =>this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

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
                      controller:TextWithImage ,
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
                          image != null? Image.file(image,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ):
                         Container(),
                          SizedBox(width: 5,),
                          InkWell(
                            onTap: ()
                            {
                              showDialog(context: context, builder: (context)=>AlertDialog(
                                title: GestureDetector(
                                    onTap: ()
                                    {
                                      pickImageCamera(ImageSource.camera);
                                    },
                                    child: Text('Camera')),
                                content: InkWell(
                                    onTap: ()
                                    {
                                      pickImageGellery();
                                    },
                                    child: Text('Gellery')),
                              ));
                            },
                            child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(20.0)
                                ),
                                child: Icon(MaterialIcons.add_a_photo,color: Colors.blue,)),
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


  //wai

  Future<ImageSource> showImageSource(BuildContext context) async
  {
    if (Platform.isIOS){
      return showCupertinoModalPopup<ImageSource>(
          context: context,
          builder: (context) => CupertinoActionSheet(
            actions: [
              CupertinoActionSheetAction(
                child: Text('Camera'),
                onPressed: ()=>Navigator.of(context).pop(ImageSource.camera),
              ),
              CupertinoActionSheetAction(
                child: Text('Gallery'),
                onPressed: ()=>Navigator.of(context).pop(ImageSource.gallery),
              ),
            ],
          )
      );
    } else {
      return showModalBottomSheet(
          context: context,
          builder: (context) =>Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Camera'),
                onTap: ()=>Navigator.of(context).pop(ImageSource.camera),
              ),
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Gallery'),
                onTap: ()=>Navigator.of(context).pop(ImageSource.gallery),
              ),
            ],
          )
      );
    }
  }




}