import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class BoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: deviceHeight * 0.1,
          width: deviceWidth * 1,
          color: Colors.black,
          alignment: Alignment.center,
          child: Text(
            "Bienvenue sur mon application",
            style: TextStyle(
              fontSize: 15.0,
              letterSpacing: 2.5,
              height: 02.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: deviceHeight * 0.15,
          margin: EdgeInsets.fromLTRB(12, 150, 12, 12),
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 70,
            child: CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  "https://scontent-cdg2-1.xx.fbcdn.net/v/t1.6435-9/203708030_4321233237928910_4642963534000150128_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=174925&_nc_ohc=PHfsFI-K7JgAX9rpwtv&_nc_ht=scontent-cdg2-1.xx&oh=00_AT8i4OP3nD8VVTmMvOci1CCetqy0aWa9y7MyRqumebtTNg&oe=6202106D"),
            ),
          ),
          width: deviceWidth * 1,
          //color: Colors.white,
          //Put your child widget here.
        ),
        Container(
          height: deviceHeight * 0.05,
          width: deviceWidth * 0.8,
          //color: Colors.white,
          //margin: EdgeInsets.fromLTRB(12,0, 0, 12),
          alignment: Alignment.center,
          child: Center(
            child: Text(
              "Thomas Palisseau",
              style: TextStyle(
                fontSize: 28.0,
                fontFamily: 'Pacifico',
                color: Colors.white,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: deviceHeight * 0.01,
          width: deviceWidth * 0.40,
          margin: EdgeInsets.fromLTRB(12, 12, 12, 12),
          alignment: Alignment.center,
          //color: Colors.red,
          child: Divider(
            thickness: 2,
            indent: 5,
            endIndent: 0,
            color: Colors.white,
          ),
        ),
        Container(
          height: deviceHeight * 0.05,
          width: deviceWidth * 0.8,
          margin: EdgeInsets.fromLTRB(12, 12, 12, 12),
          color: Colors.white,
          alignment: Alignment.center,
          child: Row(children: [
            SizedBox(
              width: 80,
              child: Icon(
                Icons.email,
                color: Colors.orange,
                size: 24.0,
              ),
            ),
            Text(
              "palisseau@protonmail.com ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
        Container(
          height: deviceHeight * 0.05,
          width: deviceWidth * 0.8,
          margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
          color: Colors.white,
          alignment: Alignment.center,
          child: Row(
            children: [
              SizedBox(
                width: 80,
                child: Icon(
                  Icons.smartphone,
                  color: Colors.orange,
                  size: 24.0,
                ),
              ),
              const SizedBox(height: 200),
              Text(
                "0693 33 26 83 ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          child: Column(
            children: [
              BoxScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
