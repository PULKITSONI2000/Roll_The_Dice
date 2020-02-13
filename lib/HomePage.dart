import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  AssetImage one =AssetImage('images/one.png');
  AssetImage two =AssetImage('images/two.png');
  AssetImage three =AssetImage('images/three.png');
  AssetImage four =AssetImage('images/four.png');
  AssetImage five =AssetImage('images/five.png');
  AssetImage six =AssetImage('images/six.png');
  var currentPlayer;
  AssetImage currentImage1, currentImage2;

  @override
  void initState(){
    super.initState();
    setState(() {
      currentImage1 = one;
      currentImage2 = one;
      currentPlayer = "First player";

    });
  }

  rollDice(){
    var random1 = 1 + Random().nextInt(6);
    var random2 = 1 + Random().nextInt(6);

    setState(() {

      if (currentPlayer == "First player") {
        currentPlayer = "Second player";
      } else {
          currentPlayer = "First player";
        }
      switch (random1) {
        case 1:
          currentImage1 = one;
          break;
        case 2:
          currentImage1 = two;
          break;
        case 3:
          currentImage1 = three;
          break;
        case 4:
          currentImage1 = four;
          break;
        case 5:
          currentImage1 = five;
          break;
        case 6:
          currentImage1 = six;
          break;
      }
      switch (random2) {
        case 1:
          currentImage2 = one;
          break;
        case 2:
          currentImage2 = two;
          break;
        case 3:
          currentImage2 = three;
          break;
        case 4:
          currentImage2 = four;
          break;
        case 5:
          currentImage2 = five;
          break;
        case 6:
          currentImage2 = six;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dice Roller...",),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$currentPlayer Turn",style: TextStyle(fontSize: 30.0),),
            Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                Image(
                  image: currentImage1,
                  height: 150.0,
                  width: 150.0,
                ),
                Image(
                  image: currentImage2,
                  height: 150.0,
                  width: 150.0,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
              child: RaisedButton(
              onPressed: rollDice,
              color: Color(0xFFFFD000),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
              padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
              child: Text(
                "Roll-it-up!",
                style: TextStyle(
                  fontSize: 30.0,
                ),
                ),
            ),
            )
            
          ],
        ),
      ),
    );
  }
}