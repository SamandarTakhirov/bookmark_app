import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'registration_page.dart';

class TextPage extends StatefulWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  bool likes = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const RegistrationPage();
          })),
          child: const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 20, top: 20),
            child: Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, top: 20),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Son of the Storm",
                                      style: TextStyle(
                                        color: Color(0xFF3D4EED),
                                        fontSize: 20,
                                        fontFamily: "Raleway",
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Chapter 3 - Lorem ipsum dolor sit amet.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: "Raleway",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  likes
                                      ? setState(() => likes = false)
                                      : setState(() => likes = true);
                                },
                                child: likes
                                    ? const Icon(
                                        color: Color(0xFF3D4EED),
                                        CupertinoIcons.heart,
                                      )
                                    : const Icon(
                                        CupertinoIcons.heart_fill,
                                        color: Color(0xFF3D4EED),
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing ultrices suspendisse augue rhoncus, pretium bibendum luctus massa. Enim pellentesque diam vel at morbi non faucibus erat. 
Tincidunt viverra metus, ac quis. Tempor eget a in sed integer. Dignissim tincidunt sed a sapien ac. Aliquam in laoreet faucibus pretium suspendisse aliquam viverra. Quis egestas lorem suspendisse enim massa sed auctor pretium. Aliquam amet amet a id. Eu a, tortor quis nunc, semper. Et varius est, ornare dui commodo varius sed. Morbi sit scelerisque odio iaculis tristique volutpat gravida sed vestibulum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam faucibus aliquet tincidunt nunc viverra. In sed nec eget convallis netus erat interdum ultrices maecenas. Maecenas leo et venenatis varius.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam faucibus aliquet tincidunt nunc viverra. In sed nec eget convallis netus erat interdum ultrices maecenas. Maecenas leo et venenatis varius Aliquam amet amet a id. Eu a, tortor quis nunc, semper. Et varius est, ornare dui commodo varius sed. . .
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Adipiscing ultrices suspendisse augue rhoncus, pretium bibendum luctus massa. Enim pellentesque diam vel at morbi non faucibus erat. 
Tincidunt viverra metus, ac quis. Tempor eget a in sed integer. Dignissim tincidunt sed a sapien ac. Aliquam in laoreet faucibus pretium suspendisse aliquam viverra. Quis egestas lorem suspendisse enim massa sed auctor pretium. Aliquam amet amet a id. Eu a, tortor quis nunc, semper. Et varius est, ornare dui commodo varius sed. Morbi sit scelerisque odio iaculis tristique volutpat gravida sed vestibulum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam faucibus aliquet tincidunt nunc viverra. In sed nec eget convallis netus erat interdum ultrices maecenas. Maecenas leo et venenatis varius.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam faucibus aliquet tincidunt nunc viverra. In sed nec eget convallis netus erat interdum ultrices maecenas. Maecenas leo et venenatis varius Aliquam amet amet a id. Eu a, tortor quis nunc, semper. Et varius est, ornare dui commodo varius sed. . .
                        """,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Image.asset("assets/images/music.png")),
                    const Text(
                      "Page 32 of 245",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Raleway"),
                    ),
                    Expanded(child: Image.asset("assets/images/book.png")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
