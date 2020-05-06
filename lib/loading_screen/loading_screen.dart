import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:love_calculator/Transitions/transition.dart';
import 'package:love_calculator/screens/home.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  void moveToHome() async {
    await Future.delayed(Duration(milliseconds: 1500));
    Navigator.pushReplacement(context, FadeRouteBuilder(page: Home()));
  }

  @override
  void initState() {
    super.initState();
    moveToHome();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitPumpingHeart(
              color: Colors.red,
              size: 150,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
