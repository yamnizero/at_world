import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/SendMessages/widget_create_new_thread.dart';
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/SendMessages/widget_individual_messages.dart';
import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/SendMessages/widget_send_group_message.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ScreenSendMessages extends StatefulWidget {
  const ScreenSendMessages({Key? key}) : super(key: key);

  @override
  _ScreenSendMessagesState createState() => _ScreenSendMessagesState();
}

class _ScreenSendMessagesState extends State<ScreenSendMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        foregroundColor:Colors.black ,
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Text('Send Messages',style: TextStyle(color: Colors.black),),
        centerTitle: true,

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'What type of message do you want to send to the members of this group?',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16,color: Colors.black),
                ),
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  WidgetSendGroupMessage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Send a Group Message',style: SettingListTile),
                            Icon(Icons.arrow_forward_ios, size: 15.0,),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  WidgetCreateNewThread(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Create a New Thread',style: SettingListTile),
                            Icon(Icons.arrow_forward_ios, size: 15.0,),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  WidgetSendIndividualMessages(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Send Individual Messages',style: SettingListTile),
                            Icon(Icons.arrow_forward_ios, size: 15.0,),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
          ),
           ),
        ],
      ),
    );
  }
}
