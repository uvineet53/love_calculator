import 'package:flutter/material.dart';
import 'package:love_calculator/Transitions/transition.dart';
import 'package:love_calculator/screens/home.dart';

class Result extends StatefulWidget {
  final String boyname;
  final String girlname;
  Result({this.boyname, this.girlname});
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    double pct = getPercentage(widget.boyname, widget.girlname);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (pct == double.nan || pct == double.infinity)
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Don't Fool Yourself",
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/undraw_conversation_h12g.png'),
                ],
              )
            else if (pct < 50.0)
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Don't Worry, life is BIG!",
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/sed.png'),
                ],
              )
            else
              Column(
                children: <Widget>[
                  Text(
                    "Yay, Congratulations!",
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset("assets/love.png"),
                ],
              ),
            SizedBox(
              height: 20,
            ),
            Text(
              "${pct.toInt().toString()}%",
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 70,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context, FadeRouteBuilder(page: Home()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  child: Text(
                    "Start Over",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  double getPercentage(String name1, String name2) {
    int nameOneLength = name1.length;
    int nameTwoLength = name2.length;
    double result =
        ((((nameOneLength) * 2) - nameTwoLength) / (nameOneLength)) * 100;
    return result.abs();
  }
}
