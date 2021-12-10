


import 'package:at_world/Models/Home_models/Members/Connection/Componets_connection/all_profile_type.dart';
import 'package:at_world/Models/Home_models/Members/Connection/Componets_connection/recently_active.dart';
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/document/show_file.dart';
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/document/widget_bottom_sheet.dart';
import 'package:at_world/share/components/componets.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ScreenDocument extends StatefulWidget {

  const ScreenDocument({Key? key}) : super(key: key);

  @override
  _ScreenDocumentState createState() => _ScreenDocumentState();
}

class _ScreenDocumentState extends State<ScreenDocument> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        leading:  Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,),
        title: FlatButton(
          onPressed: ()
          {

          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Document',style: TextStyle(color: Colors.black,fontSize: 18),),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: ()
              {
                setState(() {
                  bottomSheetDocument(context);
                });
              },
              child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.add,size: 22,color: Colors.black,)),
            ),
          ),
        ],
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(55),
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
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: dropButton(
                      text: 'Alphabetical',
                      function: ()
                      {

                      }
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: dropButton
                    (
                    text: 'Date Modified',
                    function: (){},
                  )

                ),

              ],
            ),

          ),
            Divider(height: 10,thickness: 1,),
          ],

        ),
      ),
    );
  }
}
