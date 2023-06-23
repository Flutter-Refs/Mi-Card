// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String sourceSans3Font = 'Source Sans 3';

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Card',
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // avatar
              CircleAvatar(
                radius: 100,
                foregroundImage: AssetImage('img/avatar.png'),
              ),
              // name txt
              Text(
                "Yavor Yankov",
                style: TextStyle(
                  fontFamily: 'GasoekOne',
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              // job title
              Text(
                "Software Developer",
                style: TextStyle(
                    fontFamily: sourceSans3Font,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2),
              ),
              // phone number
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                padding: EdgeInsets.all(10),
                child: Row(children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+44 123 456 789',
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: sourceSans3Font,
                      fontSize: 20,
                    ),
                  ),
                ]),
              ),
              // email address
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25,
                ),
                padding: EdgeInsets.all(10),
                child: Row(children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'test.email@your.domain.com',
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: sourceSans3Font,
                      fontSize: 20,
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
