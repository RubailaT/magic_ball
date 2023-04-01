 import 'dart:math';

import 'package:flutter/material.dart';

class Magicball extends StatefulWidget {
  const Magicball({Key? key}) : super(key: key);

  @override
  State<Magicball> createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {

  int balls=1;

  void magic() {
    balls = Random().nextInt(4)+1 ;
    setState(() {
    balls;

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
  GestureDetector(
    onTap: (){
      magic();
    },
    child: Center(
      child: CircleAvatar(
        radius: 100,
        child: Image(image:
        AssetImage("images/ball$balls.png"),
        ),
      ),
    ),
  ),
        ],
      )

    );
  }
}
