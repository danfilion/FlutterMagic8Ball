import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      home: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade700,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: BallPage(),
        ),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int currentBall = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          setState(() {
            currentBall = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$currentBall.png'),
      ),
    );
  }
}

//Solution is different in this way
//import 'dart:math';
//import 'package:flutter/material.dart';
//
//void main() => runApp(
//  MaterialApp(
//    home: BallPage(),
//  ),
//);
//
//class BallPage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.blue,
//      appBar: AppBar(
//        backgroundColor: Colors.blue.shade900,
//        title: Text('Ask Me Anything'),
//      ),
//      body: Ball(),
//    );
//  }
//}
