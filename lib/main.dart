import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final List color = [
    Colors.amber,
    Colors.red,
    Colors.purple,
    Colors.lightGreen,
    Colors.grey,
    Colors.cyan,
    Colors.amber
  ];

  void playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  xylophoneKey(int soundKey, int colorKey) {
    return Expanded(
      child: FlatButton(
        color: color[colorKey],
        onPressed: () {
          playSound(soundKey);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  xylophoneKey(1, 1),
                  xylophoneKey(2, 2),
                  xylophoneKey(3, 3),
                  xylophoneKey(4, 4),
                  xylophoneKey(5, 5),
                  xylophoneKey(6, 6),
                ])));
  }
}
