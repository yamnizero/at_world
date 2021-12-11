
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

class WidgetSendIndividualMessages extends StatefulWidget {
  const WidgetSendIndividualMessages({Key? key}) : super(key: key);

  @override
  _WidgetSendIndividualMessagesState createState() => _WidgetSendIndividualMessagesState();
}

class _WidgetSendIndividualMessagesState extends State<WidgetSendIndividualMessages> {
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recipients',style: TextStyle(color: Colors.black,fontSize: 18)),
                  Text(
                    "Select all",
                    style: TextStyle(color: Colors.blue,fontSize:18).copyWith(
                        //decoration: TextDecoration.underline,
                        decorationThickness: 1),
                  ),
                ],
              ),
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}

