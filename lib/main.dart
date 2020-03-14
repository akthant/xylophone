import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    // or as a local variable
    final player = AudioCache();
    // call this method when desired
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNo, Color btnColor}) {
    return Expanded(
      child: FlatButton(
        color: btnColor,
        onPressed: () {
          playSound(soundNo);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNo: 1, btnColor: Colors.red),
              buildKey(soundNo: 2, btnColor: Colors.orange),
              buildKey(soundNo: 3, btnColor: Colors.yellow),
              buildKey(soundNo: 4, btnColor: Colors.green),
              buildKey(soundNo: 5, btnColor: Colors.teal),
              buildKey(soundNo: 6, btnColor: Colors.blue),
              buildKey(soundNo: 7, btnColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
