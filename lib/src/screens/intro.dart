import 'package:flutter/material.dart';

import 'registration_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void initState() {
    super.initState();
    IntroPage();
  }

  void IntroPage() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const RegistrationPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3d4eec),
      body: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
