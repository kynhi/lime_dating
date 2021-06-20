import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lime_dating/Screens/LoginScreen.dart';
import 'package:lime_dating/Models/tinder_clone_icons.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(new Duration(seconds: 2), () {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new Icon(
          Tinder_clone.iconfinder_338_tinder_logo_4375488__1_,
          color: Theme.of(context).primaryColor,
          size: ScreenUtil().setSp(200.0),
        ),
      ),
    );
  }
}
