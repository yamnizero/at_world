import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

Widget buttonOrganizer({
  @required Function function,
}) =>
    SizedBox(
      width: 130,
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(MaterialIcons.check),
            Text(
              "Organizer",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        onPressed: function,
        style: ElevatedButton.styleFrom(
            primary: Colors.grey.shade300,
            onPrimary: Colors.black,
            shape: StadiumBorder()),
      ),
    );


Widget buttomSheetOrganizer(context) {
  showModalBottomSheet(context: context, builder: (BuildContext c)
  {
    return Wrap(
      children: [
        Container(
          color: Colors.grey.shade100,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage:AssetImage('assets/images/me2.png'),
                        ),
                        SizedBox(width: 15,),
                        Center(child: Text('Mohammed',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.close,
                              color: Colors.black26,
                              size: 15.0,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(height: 10,thickness: 1,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Innovation is truly a confusing buzzword which many people love to hate.'
                              'Every business leader agrees that it is important.but nobody can quit semm'
                              'to agree on what it actually is or what it means.',
                        maxLines: 5,
                        overflow: TextOverflow.clip,
                        style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Icon(Ionicons.log_out_sharp,size: 30,),
                            SizedBox(width: 10,),
                            Text("Leave",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ],
    );
  }
  );
}