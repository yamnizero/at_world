
import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
          builder: (context,constraints) {
            final heightScreen = constraints.maxHeight;
            final widthScreen = constraints.maxWidth;
            print('MaxHeight $heightScreen');
            print('MaxWidth $widthScreen');
            return Container();
          },
      ),
    );
  }
}
