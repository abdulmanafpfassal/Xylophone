import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundChange(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildButton({required Color color,required int noteNum}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            soundChange(noteNum);
          },
          child: Text(''),
        ),
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
            children: [
              buildButton(color: Colors.yellow, noteNum: 1),
              buildButton(color: Colors.teal, noteNum: 2),
              buildButton(color: Colors.green, noteNum: 3),
              buildButton(color: Colors.blue, noteNum: 4),
              buildButton(color: Colors.red, noteNum: 5),
              buildButton(color: Colors.purple, noteNum: 6),
              buildButton(color: Colors.greenAccent, noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
