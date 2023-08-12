import "package:flutter/material.dart";
import "dart:math"; // to flip the coin

void main() => runApp(CoinFlip());

class CoinFlip extends StatefulWidget {
  @override
  State<CoinFlip> createState() => _CoinFlipState();
}

class _CoinFlipState extends State<CoinFlip> {
  int coinhead = 0;

  Random coinside = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The coin is: ${coinhead == 1 ? "heads" : "Tails"}"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.attach_money),
          onPressed: () {
            setState(() {
              coinhead = coinside.nextInt(2);
            });

            print(coinhead);
          },
        ),
      ),
    );
  }
}
