import 'package:at_world/share/components/componets.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ConnectionMember extends StatelessWidget {
  const ConnectionMember({Key key}) : super(key: key);

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
                    function: (){}
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: dropButton(
                      text: 'All Profile Types',
                      function: (){}
                  ),

                ),
              ],
            ),
          ),
          Divider(height: 10,thickness: 1,),
          ListTile(
            leading: Icon(Icons.account_circle, size: 50),
            title: Text('Title Text'),
            subtitle: Text('Secondary Text'),
          ),
        ],
      )


    );
  }
}
