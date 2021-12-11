

import 'package:flutter/material.dart';

class WidgetPendingInvites extends StatefulWidget {
  const WidgetPendingInvites({Key? key}) : super(key: key);

  @override
  _WidgetPendingInvitesState createState() => _WidgetPendingInvitesState();
}

class _WidgetPendingInvitesState extends State<WidgetPendingInvites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          elevation: 0.0,
          leading:  Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,),
          title: TextButton(
            onPressed: ()
            {

            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Pending Invites',style: TextStyle(color: Colors.black,fontSize: 18),),
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

    );
  }
}
