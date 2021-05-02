import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List photos=['assets/images/dice1.jpg','assets/images/dice2.jpg','assets/images/dice3.jpg','assets/images/dice4.jpg'
  ,'assets/images/dice5.jpg','assets/images/dice6.jpg'];

  @override
  Widget build(BuildContext context) {
    Random variable=Random();
    int x=variable.nextInt(5);

    return Scaffold(
      appBar: AppBar(
        title: Text('Dice app'),
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(image: DecorationImage(image: ExactAssetImage(photos[x]),fit: BoxFit.cover)),

              ),
              RaisedButton(
                child: Text("tap",style: TextStyle(fontSize: 40),),
                  onPressed: (){
                  setState(() {
                    x= variable.nextInt(5);
                  });

                  })
            ],
          ),
        ),
    );
  }
}
