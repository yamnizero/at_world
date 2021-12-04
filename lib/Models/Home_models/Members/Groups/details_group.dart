
import 'package:at_world/Models/Home_models/Members/Groups/widget_groups.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class DetailsGroup extends StatelessWidget {
  const DetailsGroup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child : Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.50,
                        color: Colors.red,
                        child: Image.asset('assets/images/bu2.png',fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                  Positioned(
                      top: 45,
                      left: 25,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Icon(Icons.arrow_back_ios,size: 16,color: Colors.white,)),
                      )
                  ),
                  Positioned(
                      top: 45,
                      right: 25,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Icon(MaterialIcons.more_horiz,size: 18,color: Colors.white,),
                      )
                  ),
                  Positioned(
                    top: 100,
                    left: 70,
                    child: Column(
                      children: [
                        Container(
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
                        SizedBox(
                          height: 10,
                        ),
                        Text('Business Meet',
                            style: TextStyle(
                                color: Colors.white,
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
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: ()
                          {
                            buttomSheetOrganizer(context);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width/1.5,
                            height: 50,
                            child: Text(
                              'Innovation is truly a confusing buzzword which many people love to hate.'
                                  'Every business leader agrees that it is important.but nobody can quit semm'
                                  'to agree on what it actually is or what it means.',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 16,color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: ()
                          {
                            buttomSheetOrganizer(context);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width/3.3,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15.0,
                                    backgroundImage:AssetImage('assets/images/me2.png'),
                                  ),
                                  SizedBox(width: 5,),
                                  Text('Organizer',style: TextStyle(color: Colors.blue),)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListButtonPageGoupe(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
