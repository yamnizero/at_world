import 'package:at_world/Models/Home_models/Members/Timeline/widget_timeline.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TimeLinePage extends StatelessWidget {
  const TimeLinePage({Key? key}) : super(key: key);

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
                // SizedBox(width: 5,),
                // Padding(
                //   padding: const EdgeInsets.only(left: 35.0),
                //   child: Text(
                //     'Mohammed',
                //     style: TextStyle(
                //       color: black,
                //       fontSize: 12
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        title: Text(
          'TimeLine',
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
        child: WidgetTimeLine(),
      ),
    );
  }
}
