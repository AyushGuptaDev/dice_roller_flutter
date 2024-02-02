import "dart:math";

import"package:flutter/material.dart";
 void main(){
   runApp(Apppp());
 }
 class Apppp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dice_roller(),
    );
  }
}

class Dice_roller extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return Dice_state();
  }
}

class Dice_state extends State<Dice_roller> {
  int num=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
      ),
      body:
      Container(
        color: Colors.blue,
        child: Center(
          child: InkWell(
            child: Container(
              color: Colors.orange,
              width: 100,
              height: 100,
              child: Center(
                child: Text(num.toString(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.normal),),
              ),
            ),
            onTap: () {
              //print("dhsibd");
             // rollDice();
              num=Random().nextInt(6)+1;
              print(num);
              setState(() {

              });
            },
          ),
        ),
      ),
    );
  }
}
