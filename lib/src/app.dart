import 'package:flutter/material.dart';

import 'screens/intro.dart';

class Controller extends StatelessWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BookMark",
      home: IntroPage(),
    );
  }
}
