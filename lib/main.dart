import 'package:at_world/Layout/home_layout.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // // SystemChrome.setPreferredOrientations([
  // //   DeviceOrientation.portraitDown,
  // //   DeviceOrientation.portraitUp,
  // // ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}

// plan tow
// null safety and clean code
// and start again
