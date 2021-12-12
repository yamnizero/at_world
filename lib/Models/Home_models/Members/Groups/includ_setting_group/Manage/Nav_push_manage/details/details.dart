

import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  TextEditingController groupName = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        leading:  InkWell(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,size: 16,color: Colors.black,)),
        title: Text('Details',style: TextStyle(color: Colors.black,fontSize: 18),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: (){
               //here wanna toash
               //here wanna function
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 70,
                  child: TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                  ),
                     backgroundColor: Colors.grey.shade200,
                      primary: Colors.pink,
                    ),
                    child: Text('Save'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         children: [
                           Text('Group Name',style:TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.w700),),
                           Text('(required)'),
                         ],
                       ),
                     ),
                     Container(
                       // width: MediaQuery.of(context).size.width,
                       // height: 50,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.grey.shade300,
                       ),
                       child:  Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextField(
                           controller:groupName ,
                           decoration: InputDecoration(
                               enabledBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(color: Colors.grey.shade300),
                               ),
                               focusedBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(color:Colors.grey.shade300),
                               ),
                               border: UnderlineInputBorder(
                                 borderSide: BorderSide(color: Colors.grey.shade300),
                               ),
                               // focusedBorder: new UnderlineInputBorder(
                               //   borderSide: new BorderSide(color: Colors.grey.shade300
                               //   ), ),
                               hintText: 'Group name'
                           ),
                         ),
                       ),
                     )
                   ],
                 ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                 child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text('Group Description',style:TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.w700),),
                     ),
                     Container(
                       // width: MediaQuery.of(context).size.width,
                       // height: 50,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Colors.grey.shade300,
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextField(
                           controller:groupName ,
                           decoration: InputDecoration(
                               enabledBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(color: Colors.grey.shade300),
                               ),
                               focusedBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(color:Colors.grey.shade300),
                               ),
                               border: UnderlineInputBorder(
                                 borderSide: BorderSide(color: Colors.grey.shade300),
                               ),
                               // focusedBorder: new UnderlineInputBorder(
                               //   borderSide: new BorderSide(color: Colors.grey.shade300
                               //   ), ),
                               hintText: 'Group Description'
                           ),
                           maxLines:10,
                         ),
                       ),
                     )
                   ],
                 ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
