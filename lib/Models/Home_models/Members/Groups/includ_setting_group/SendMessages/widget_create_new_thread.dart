

import 'package:flutter/material.dart';

class WidgetCreateNewThread extends StatefulWidget {
  const WidgetCreateNewThread({Key? key}) : super(key: key);

  @override
  _WidgetCreateNewThreadState createState() => _WidgetCreateNewThreadState();
}

class _WidgetCreateNewThreadState extends State<WidgetCreateNewThread> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 1.0,
        leading:  Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,),
        title: TextButton(
          onPressed: ()
          {

          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Send Message',style: TextStyle(color: Colors.black,fontSize: 18),),
            ],
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(56),
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
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Text('Recipients',style: TextStyle(color: Colors.black,fontSize: 18)),
            ),
          ),
          Divider()
        ],
      ),

    );
  }
}
