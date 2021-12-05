import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/widget_tools_post.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CreatePostGroups extends StatefulWidget {
  const CreatePostGroups({Key key}) : super(key: key);

  @override
  State<CreatePostGroups> createState() => _CreatePostGroupsState();
}

class _CreatePostGroupsState extends State<CreatePostGroups> {
  TextEditingController createPost = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        leading:  Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,),
        title: Text(
          'Create a Post',
          style: TextStyle(
            color: black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.6),
                radius: 15,
                child: Icon(
                  Icons.border_color_rounded,
                  color: black,
                  size: 18,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height/1.2,
                  child:  TextField(
                    controller:createPost ,
                    decoration: InputDecoration(
                        focusedBorder: new UnderlineInputBorder( borderSide: new BorderSide(color: Colors.white), ),
                        hintText: 'Write here or use @ to mention someone'
                    ),
                    maxLines:80,
                  ),
                ),
              ),
              Divider(height: 10,thickness: 1,),
              ToolsPos(context),
            ],
          ),
        ),
      ),
    );
  }
}
