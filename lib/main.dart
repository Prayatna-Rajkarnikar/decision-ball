import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black38,
          appBar:  AppBar(
            title:  const Center(
                child: Text('Ask Me Anything')),
            backgroundColor: Colors.grey,
          ),
          body: const BallPage(),
        ),
      ));
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int changeBall = 1;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:  Row(
        children: [
          Expanded(child: TextButton(
              onPressed: () {
                setState(() {
                  changeBall = Random().nextInt(5) +1;
                });
              },
              child: Image.asset('images/ball$changeBall.png')),
          )
        ],
      ),
    );
  }
}





