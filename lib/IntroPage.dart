import 'dart:ui';

import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  final primaryColor = const Color(0xFF75A2EA);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFf3366FF),
              Color(0xFF00CCff),
            ],
          ),
        ),
        child: SafeArea(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  SizedBox(height: _height * 0.10),
                  CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage('images/Nevis.jpeg'),
                  ),
                  SizedBox(height: _height * 0.037),
                  Column(
                    children: [
                      Text(
                        "Welcome!",
                        style: TextStyle(fontSize: 38, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: _height * 0.05),
                  Text(
                    "Are you ready to start bagging Munros?",
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32.5,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: _height * 0.05),
                  Container(
                    height: 37.5,
                    width: 275,
                    child: ElevatedButton(
                      child: Text(
                        'Sign Up',
                          style: TextStyle(
                              fontSize: 24,
                            fontWeight: FontWeight.w300,
                          ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Color(0xFF75A2EA),
                        elevation: 20,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      ),
                      onPressed: () {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => IntroPage())
    );
                      }),
    ),
                  SizedBox(height: _height * 0.025),
                  Container(
                    height: 37.5,
                    width: 275,
                    child: ElevatedButton(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Color(0xFF75A2EA),
                          elevation: 20,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => IntroPage())
                          );
                        }),
                  ),
                  SizedBox(height: _height * 0.025),
                  Container(
                    height: 37.5,
                    width: 275,
                    child: ElevatedButton(
                        child: Text(
                          'Buy me a coffee?',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Color(0xFF75A2EA),
                          elevation: 20,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => IntroPage()));
                        }),
                  ),
    ]
    ),
            )
    )
    )
    );
  }
  }