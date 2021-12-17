import 'package:at_world/share/components/componets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'components_groupsModels/buttoomSheet.dart';

class WidgetScreenGroups extends StatefulWidget {
  const WidgetScreenGroups({Key? key}) : super(key: key);

  @override
  _WidgetScreenGroupsState createState() => _WidgetScreenGroupsState();
}

class _WidgetScreenGroupsState extends State<WidgetScreenGroups> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
          itemCount: 1,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: dropButton(
                  text: 'All Groups',
                  function: ()
                  {
                    setState(() {
                      bottomSheetAllGroups(context);
                    });
                  }
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: dropButton(
                  text: 'Recently Active',
                  function: ()
                  {
                    setState(() {
                      bottomSheetRecentlyActive(context);
                    });
                  }
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: dropButton(
                  text: 'All Group Types',
                  function: ()
                  {
                    setState(() {
                      bottomSheetAllGroupType(context);
                    });
                  }
              ),

            ),
          ],
        ),
      ),
    );

  }
}
