

import 'dart:io';

import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/document/show_file.dart';
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/document/widget_botton_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class AddNewUploadFile extends StatefulWidget {

  const AddNewUploadFile({Key? key}) : super(key: key);

  @override
  _AddNewUploadFileState createState() => _AddNewUploadFileState();
}

class _AddNewUploadFileState extends State<AddNewUploadFile> {
  TextEditingController textWithUploadFile = TextEditingController();
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
              Text('Add New Upload File ',style: TextStyle(color: Colors.black,fontSize: 18),),
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
                  onPressed: () {  },
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
                      controller:textWithUploadFile ,
                      decoration: InputDecoration(
                          focusedBorder: new UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.grey
                            ), ),
                          hintText: 'Write something about your document,to be shown on your timeline'

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
                      InkWell(
                        onTap: ()=> Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShowFile(files: [], onOpenedFile: (PlatformFile value) {  },)
                          ),
                        ),
                        child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Center(child: Text('all')),
                      ),
                      ),
                      Container(),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: ()
                        {
                          showDialog(context: context, builder: (context)=>AlertDialog(
                            title: Text('Select the file...'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                    child: Text('Browse...',style: TextStyle(fontSize: 20),),
                                  onPressed: () async {
                                      final result = await FilePicker.platform.pickFiles(
                                          allowMultiple: true,
                                           type: FileType.custom,
                                            allowedExtensions: ['jpg']
                                      );

                                      if(result == null) return;
                                      //open single file
                                      final file = result.files.first;
                                      openFile(file);
                                      openFiles(result.files);

                                      //openFile(file)
                                      final newFile = await  saveFilePermanently(file);
                                  },
                                ),
                                SizedBox(height: 10,),
                                InkWell(
                                    onTap: ()
                                    {
                                       Navigator.pop(context);
                                    },
                                    child: Text('Cancel',style: TextStyle(fontSize: 20),)),
                              ],
                            ),
                          ));
                        },
                        child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Icon(MaterialIcons.file_upload,color: Colors.blue,)),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: ()
                    {

                      // edit
                      bottomSheetFile(context);
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

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }


  Future<File> saveFilePermanently(PlatformFile file) async {
    final appStrorag = await getApplicationDocumentsDirectory();
    final newFile = File('${appStrorag.path}/${file.name}');
    return File(file.path!).copy(newFile.path);
  }

  void openFiles(List<PlatformFile> files)
  {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context)=> ShowFile(
          files :files,
          onOpenedFile: openFile,
        ),
    ));
  }




}


