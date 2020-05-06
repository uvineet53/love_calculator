import 'package:flutter/material.dart';
import 'package:love_calculator/Transitions/transition.dart';
import 'package:love_calculator/screens/result.dart';

class Crush extends StatefulWidget {
  final String boyName;
  Crush({this.boyName});
  @override
  _CrushState createState() => _CrushState();
}

class _CrushState extends State<Crush> {
  TextEditingController controller = new TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/image.jpg",
                fit: BoxFit.contain,
                height: 300,
                width: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Name of your Crush?",
                style: TextStyle(fontSize: 25),
              ),
              Container(
                width: width / 2,
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: controller,
                  cursorColor: Colors.grey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  color: Colors.red,
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            FadeRouteBuilder(
                                page: Result(
                              boyname: widget.boyName,
                              girlname: controller.text,
                            )));
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
