import 'package:at_world/share/components/componets.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'Componets_connection/all_profile_type.dart';
import 'Componets_connection/recently_active.dart';

class ConnectionMember extends StatefulWidget {
  const ConnectionMember({Key? key}) : super(key: key);

  @override
  State<ConnectionMember> createState() => _ConnectionMemberState();
}

class _ConnectionMemberState extends State<ConnectionMember> {
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
          'Connections',
          style: TextStyle(
            color: black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: dropButton(
                    text: 'Recently Active',
                    function: ()
                    {
                      setState(() {
                        buttomSheetRecentlyActive(context);
                      });
                    }
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: dropButton(
                      text: 'All Profile Types',
                      function: ()
                      {
                        setState(() {
                          buttomSheetAllProfileType(context);
                        });
                      }
                  ),

                ),
              ],
            ),
          ),
          Divider(height: 10,thickness: 1,),
          ListTile(
             leading: CircleAvatar(
           radius: 30.0,
             backgroundImage: AssetImage('assets/images/me3.png'),
            ),
              title: Text('Ahmed', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
             subtitle: Text('Admin'),
           ),
        ],
      )


    );
  }
}
