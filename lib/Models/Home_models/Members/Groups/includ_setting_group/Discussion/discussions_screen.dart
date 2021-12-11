import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class DiscussionsScreen extends StatefulWidget {
  const DiscussionsScreen({Key? key}) : super(key: key);

  @override
  _DiscussionsScreenState createState() => _DiscussionsScreenState();
}

class _DiscussionsScreenState extends State<DiscussionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.40,
                  color: Colors.red,
                  child: Image.asset(
                    'assets/images/bu2.png',
                    //detailsGroupModel!.background,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: 45,
                    left: 25,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Positioned(
                    top: 45,
                    right: 25,
                    child: GestureDetector(
                      onTap: () {
                        //buttomSheetOrganizer(context);
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          MaterialIcons.more_horiz,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Positioned(
                  top: 230,
                  left: 70,
                  child: Column(
                    children: [
                      Text('Innovation',
                          // groupsMembersModel!.title,
                          // widget.groupsMembersModel.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          //buttomSheetOrganizer(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          height: 50,
                          child: Text(
                            'Innovation is truly a confusing buzzword which many people love to hate.'
                            'Every business leader agrees that it is important.but nobody can quit semm'
                            'to agree on what it actually is or what it means.',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  color: Colors.grey.shade200,
                  width: double.infinity,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              width: MediaQuery.of(context).size.width / 6.5,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(
                                'assets/images/me3.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Associated Group',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.black26)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Innovation Club',
                                    style: TextStyle(
                                      fontSize: 16,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          MaterialIcons.reply_all,
                          color: Colors.black26,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25.0),
                        child: CircleAvatar(
                          radius: 23.0,
                          backgroundImage: AssetImage('assets/images/me3.png'),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      //here want button => make posts page ------**
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' Cyber Security for Beginners  ',
                              style: titleForums,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text('2 Members',
                                    style: postForums),
                                SizedBox(width: 10,),

                                Text('5 Replies',

                                    style: postForums),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Last reply 4 years ago',
                              style: timeText,
                            ),
                            Divider(
                              color: Colors.grey.withOpacity(0.5),
                              thickness: 0.9,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        MaterialIcons.more_horiz,
                        size: 18,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// create screen
