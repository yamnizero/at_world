


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class WidgetSamplePageModel{
  String? title;
  IconData? icon;
  int? num;
  Color? color;

  WidgetSamplePageModel({
    required this.title,
    required this.icon,
    this.num,
    required this.color,
  });
}



class WidgetSamplePage extends StatelessWidget {
  final WidgetSamplePageModel widgetSamplePageModel;

  final void Function()? onTap;
  const WidgetSamplePage(this.widgetSamplePageModel,{Key? key,this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return  ListTile(
      leading: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: widgetSamplePageModel.color!,
              borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: FaIcon(
                widgetSamplePageModel.icon!,
                color: Colors.white,
              ))),
      title: Text(widgetSamplePageModel.title!),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          (widgetSamplePageModel.num! > 0) ? CircleAvatar(
            radius: 12.0,
            backgroundColor: Colors.blue.shade100,
            child: Text(
              widgetSamplePageModel.num!.toString(),
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

