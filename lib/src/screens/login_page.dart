import 'package:bookmark_app/src/screens/create_account.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'text_filds/logic.dart';
import 'text_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool glass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 30, right: 30,),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 50),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Log into account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Get back to your reading list.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 30),
                  child: Column(
                    children: [
                      myTextField(
                        glass: false,
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.done,
                        labelText: "Enter full email address",
                        prefixIconUrl: "assets/images/email.png",
                      ),
                      myTextField(
                        glass: glass,
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.done,
                        labelText: "Enter password",
                        prefixIconUrl: "assets/images/lock.png",
                        suffixIconUrl: GestureDetector(
                          onTap: () {
                            glass ? setState(() => glass = false) : setState(() => glass = true);
                          },
                          child: glass
                              ? const Icon(
                            Icons.visibility,
                            color: Color(0xff60697d),
                          )
                              : const Icon(
                            Icons.visibility_off,
                            color: Color(0xff60697d),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const TextPage();
                  })),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ColoredBox(
                      color: Color(0xFF3D4EED),
                      child: SizedBox(
                        height: 64,
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: RichText(
                    text:  TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Raleway",
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(text: "New here? "),
                        TextSpan(
                          text: "Create an account",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.push(context, MaterialPageRoute(builder: (context){
                              return const CreateAccount();
                            })),
                          style: TextStyle(
                            color: Color(0xFF3D4EED),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
