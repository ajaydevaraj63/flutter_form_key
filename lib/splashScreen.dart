import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_vd11_rev/Homepage.dart';
import 'package:flutter_app_vd11_rev/login.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    goto();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage(
              'assets/images/63714494-c4d9c880-c7f6-11e9-8940-5a9636ecba36.png'),
        ),
      )),
    );
  }

  void goto() {
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
        return login();
      }));
    });
  }
}
