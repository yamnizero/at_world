import 'package:at_world/Models/Home_models/Members/Groups/widget_groups.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'details_group.dart';

class GroupsMember extends StatelessWidget {
  const GroupsMember({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  AntDesign.arrowleft,
                  color: black,
                ),
              ],
            ),
          ),
        ),
        title: Text(
          'Groups',
          style: TextStyle(
            color: black,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: ()
        {
          Navigator.push (
            context,
            MaterialPageRoute (
              builder: (BuildContext context) => DetailsGroup(),
            ),
          );
        },
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: MediaQuery.of(context).size.width / 3.9,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/images/b.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Business Meet',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('Public / Club -',
                                    style: TextStyle(color: Colors.grey, fontSize: 16)),
                                SizedBox(
                                  width: 4,
                                ),
                                Text('13 members',
                                    style: TextStyle(color: Colors.grey, fontSize: 16)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            buttonOrganizer(
                              function:  ()
                              {
                                buttomSheetOrganizer(context);
                              },
                              width:  MediaQuery.of(context).size.width/3,
                              height: 50,
                              text:"Organizer" ,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
