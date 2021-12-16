


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class WidgetLearnDashModel{
  String? title;
  IconData? icon;
  int? num;
  Color? color;

  WidgetLearnDashModel({
    required this.title,
    required this.icon,
    this.num,
    required this.color,
  });
}



class WidgetLearnDash extends StatelessWidget {
  final WidgetLearnDashModel widgetLearnDashModel;

  final void Function()? onTap;
  const WidgetLearnDash(this.widgetLearnDashModel,{Key? key,this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return  ListTile(
      leading: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: widgetLearnDashModel.color!,
              borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: FaIcon(
                widgetLearnDashModel.icon!,
                color: Colors.white,
              ))),
      title: Text(widgetLearnDashModel.title!),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          (widgetLearnDashModel.num! > 0) ? CircleAvatar(
            radius: 12.0,
            backgroundColor: Colors.blue.shade100,
            child: Text(
              widgetLearnDashModel.num!.toString(),
            ),
          ) : Text('',),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
          ),
        ],
      ),
    );

  }
}

