


import 'package:at_world/share/components/componets.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';

class ScreenDeleteNav extends StatefulWidget {
  const ScreenDeleteNav({Key? key}) : super(key: key);

  @override
  _ScreenDeleteNavState createState() => _ScreenDeleteNavState();
}

class _ScreenDeleteNavState extends State<ScreenDeleteNav> {
  bool isChecked = false;
  bool isCh = false;
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
        title: Text('Delete',style: TextStyle(color: Colors.black,fontSize: 18),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('I understand the consequences of deleting this group.',
                              style: TextStyle(color: Colors.black26,fontSize:17,),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          Checkbox(
                            shape: CircleBorder(),
                            value: isChecked,
                            onChanged: (bool? value) { // This is where we update the state when the checkbox is tapped
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('I also want to delete the discussion forum.',
                              style: TextStyle(color: Colors.black26,fontSize:17,),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                          Checkbox(
                            shape: CircleBorder(),
                            value: isCh,
                            onChanged: (bool? value) { // This is where we update the state when the checkbox is tapped
                              setState(() {
                                isCh = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
        Container(
          width: MediaQuery.of(context).size.width/1.20,
          height: 40.0,
          child: MaterialButton(
            onPressed: (){},
            child: Text(
              'Delete Group',
              style: TextStyle(color: kClub),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: Colors.grey.shade300,
          ),
        ),
          ],
        ),
      ),
    );
  }
}
