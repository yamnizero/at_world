import 'package:at_world/Models/Home_models/Members/Groups/includ_setting_group/SendInvites/widget_pending_invites.dart';
import 'package:at_world/share/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'widget_send_invites.dart';

class SendInvitesScreen extends StatefulWidget {
  const SendInvitesScreen({Key? key}) : super(key: key);

  @override
  _SendInvitesScreenState createState() => _SendInvitesScreenState();
}

class _SendInvitesScreenState extends State<SendInvitesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Text(
          'Invites',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WidgetSentInvites(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  MaterialIcons.person_add_alt,
                                  size: 25.0,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Center(
                                    child: Text('Send Invites',
                                        style: SettingListTile)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WidgetPendingInvites(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  MaterialIcons.query_builder,
                                  size: 25.0,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Center(
                                    child: Text('Pending Invites',
                                        style: SettingListTile)),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
