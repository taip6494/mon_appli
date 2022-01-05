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
          height: deviceHeight * 0.25,
          width: deviceWidth * 1,
          color: Colors.orange,
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 70,
            child: CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  "https://scontent-cdt1-1.xx.fbcdn.net/v/t39.30808-6/262639120_4822422531143309_8778383907595570379_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=QTXnyBxsF6YAX9PsjX8&tn=KPwPIshsNhD9QjmJ&_nc_ht=scontent-cdt1-1.xx&oh=00_AT_6tlz7usL6qCS3mFvaFNv9SBHzQRiKgUsndkqbe6DqQg&oe=61DA93D7"),
            ),
          ),
          //Put your child widget here.
        ),
        Container(
          height: deviceHeight * 0.15,
          width: deviceWidth * 0.8,
          color: Colors.orange,
          alignment: Alignment.center,
          child: Center(
            child: Text(
              "Je me présente Thomas Palisseau.Je suis développeur débutant en web et mobile. ",
              style: TextStyle(
                fontSize: 15.0,
                height: 02.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: deviceHeight * 0.05,
          width: deviceWidth * 0.8,
          color: Colors.white,
          alignment: Alignment.center,
          child: Center(
            child: Text(
              "GitHub: Taip6494 ",
              style: TextStyle(
                fontSize: 15.0,
                height: 02.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: deviceHeight * 0.05,
          width: deviceWidth * 0.8,
          margin: EdgeInsets.fromLTRB(12, 12, 12, 12),
          color: Colors.white,
          alignment: Alignment.center,
          child: Center(
            child: Text(
              "Email: palisseau@protonmail.com ",
              style: TextStyle(
                fontSize: 15.0,
                height: 02.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Container(
          height: deviceHeight * 0.05,
          width: deviceWidth * 0.8,
          margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
          color: Colors.white,
          alignment: Alignment.center,
          child: Center(
            child: Text(
              "Téléphone: 0693 33 26 83 ",
              style: TextStyle(
                fontSize: 15.0,
                height: 02.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
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
